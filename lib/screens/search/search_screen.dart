import 'package:flutter/material.dart';
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
