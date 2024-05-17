import 'package:googleclone/config/api_key.dart';
import 'package:googleclone/services/api_response.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiServie {
  bool isDummyData = false;

  Future<Map<String, dynamic>> fetchData(
      {required String query, String start = "0"}) async {
    try {
      if (!isDummyData) {
        String q = query.contains(' ') ? query.split(' ').join('%20') : query;

        final response = await http.get(
          Uri.parse(
              'https://www.googleapis.com/customsearch/v1?key=$apiKey&cx=$contextKey&q=$q&start=$start'),
        );
        if (response.statusCode == 200) {
          final jsonData = response.body;
          final resData = json.decode(jsonData);
          return resData;
        }
      }
    } catch (e) {
      print(e.toString());
    }
    return apiResponse;//return dummy data if any error occurred.
  }
}
