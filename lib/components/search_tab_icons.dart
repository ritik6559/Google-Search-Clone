import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SearchTabIcons extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool isActive;
  const SearchTabIcons({
      super.key,
      required this.icon,
      required this.title,
      this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 16,
              color: isActive ? Colors.blue : Colors.grey,
            ),
            const SizedBox(width: 5,),
            Text(
              title,
              style: TextStyle(
                  fontSize: 15, color: isActive ? Colors.blue : Colors.grey),
            ),
          ],
        ),
        SizedBox(
          height: 3,
          child: isActive ? Container(
            height: 2,
            width: 48,
            color: Colors.blue,
          ) : Container(),
        )
      ],
    );
  }
}
