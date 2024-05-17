import 'package:flutter/material.dart';
import 'package:googleclone/services/api_services.dart';
import 'package:googleclone/utils/colors.dart';
import 'package:googleclone/widgets/search_footer.dart';
import 'package:googleclone/widgets/search_header.dart';
import 'package:googleclone/widgets/search_result.dart';
import 'package:googleclone/widgets/search_tabs.dart';

class SearchScreen extends StatelessWidget {
  final String searchQuery;
  final String start;
  const SearchScreen({
    super.key,
    required this.start,
    required this.searchQuery,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SearchHeader(),
            //Table for news images etc.
            Padding(
              padding: EdgeInsets.only(left: size.width <= 768 ?10:250 ),
              child: const SearchTabs(),
            ),
            const Divider(
              thickness: 2,
              height: 0,
            ),
            //search results.
            FutureBuilder(
              future: ApiServie().fetchData(query: searchQuery, start: start),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: size.width <= 768 ?10:250 ),
                        child: Text(
                          'About ${snapshot.data?['searchInformation']['formattedTotalResults']} results in ${snapshot.data?['searchInformation']['formattedSearchTime']} seconds',
                          style: const TextStyle(
                              color: Color(0xff70757a), fontSize: 15),
                        ),
                      ),
                      ListView.builder(
                        itemCount: snapshot.data?['items'].length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(left: size.width <= 768 ?10:250 ),
                            child: SearchResultComponents(
                                link: snapshot.data?['items'][index]
                                    ['formattedUrl'],
                                text: snapshot.data?['items'][index]['snippet'],
                                linkToGo: snapshot.data?['items'][index]
                                    ['link'],
                                description: snapshot.data?['items'][index]
                                    ['snippet']),
                          );
                        },
                      )
                    ],
                  );
                }
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
            //pagination buttons.
            SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      if (start != '0') {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => SearchScreen(
                                start: (int.parse(start) - 10).toString(), //if we are on the first page we don't need to go back.
                                searchQuery: searchQuery),
                          ),
                        );
                      }
                    },
                    child: const Text(
                      '< Prev',
                      style: TextStyle(fontSize: 15, color: blueColor),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => SearchScreen(
                                start: (int.parse(start) + 10).toString(), // to get next 10 results.
                                searchQuery: searchQuery),
                          ),
                        );
                    },
                    child: const Text(
                      'Next >',
                      style: TextStyle(fontSize: 15, color: blueColor),
                    ),
                  ),
                ],
              ),
            ),
            //footer.
            const SearchFooter()
          ],
        ),
      ),
    );
  }
}
