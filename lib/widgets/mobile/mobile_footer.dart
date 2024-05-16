import 'package:flutter/material.dart';
import 'package:googleclone/widgets/footer_buttons.dart';

class MobileFooter extends StatelessWidget {
  const MobileFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      alignment: WrapAlignment.spaceEvenly,
      children: [
        FooterButton(title: 'About'),
        SizedBox(
          width: 10,
        ),
        FooterButton(title: 'Advertising'),
        SizedBox(
          width: 10,
        ),
        FooterButton(title: 'Business'),
        SizedBox(
          width: 10,
        ),
        FooterButton(title: 'How Search Works'),
        SizedBox(
          width: 10,
        ),
        FooterButton(title: 'Privacy'),
        SizedBox(
          width: 10,
        ),
        FooterButton(title: 'Terms'),
        SizedBox(
          width: 10,
        ),
        FooterButton(title: 'Settings'),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
