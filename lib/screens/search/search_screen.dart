import 'package:flutter/material.dart';
import 'package:googleclone/services/api_services.dart';
import 'package:googleclone/utils/colors.dart';
import 'package:googleclone/widgets/search_footer.dart';
import 'package:googleclone/widgets/search_header.dart';
import 'package:googleclone/widgets/search_tabs.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SearchHeader(),
            //Table for news images etc.
            const Padding(
              padding: EdgeInsets.only(left: 200.0),
              child: SearchTabs(),
            ),
            const Divider(
              thickness: 2,
              height: 0,
            ),
            //search results.
            FutureBuilder(
              future: ApiServie().fetchData(query: 'Youtube', start: '0'),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 150, top: 12),
                        child: Text(
                            'About ${snapshot.data?['searchInformation']['formattedTotalResults']} results in ${snapshot.data?['searchInformation']['formattedSearchTime']} seconds'),
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
                    onPressed: () {},
                    child: const Text(
                      '< Prev',
                      style: TextStyle(fontSize: 15, color: blueColor),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  TextButton(
                    onPressed: () {},
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
