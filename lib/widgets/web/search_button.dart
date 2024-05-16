import 'package:flutter/material.dart';
import 'package:googleclone/components/button.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
              Buttons(text: 'Google Search'),
              Buttons(text: 'I\'m feeling Lucky'),
          ],
        )
      ],
    );
  }
}