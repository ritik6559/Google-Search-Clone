import 'package:flutter/material.dart';
import 'package:googleclone/utils/colors.dart';
import 'package:googleclone/widgets/footer_buttons.dart';

class WebFooter extends StatelessWidget {
  const WebFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: footerColor,
      child: const Padding(
        padding: EdgeInsets.all(0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FooterButton(title: 'About'),
                SizedBox(width: 10,),
                FooterButton(title: 'Advertising'),
                SizedBox(width: 10,),
                FooterButton(title: 'Business'),
                SizedBox(width: 10,),
                FooterButton(title: 'How Search Works'),
                SizedBox(width: 10,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FooterButton(title: 'Privacy'),
                SizedBox(width: 10,),
                FooterButton(title: 'Terms'),
                SizedBox(width: 10,),
                FooterButton(title: 'Settings'),
                SizedBox(width: 10,),
              ],
            )
          ],

        ),
      ),
    );
  }
}
