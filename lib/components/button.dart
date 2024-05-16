import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final String text;

  const Buttons({
    super.key,
    required this.text,
    });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(60)
      ),
      padding: const EdgeInsets.symmetric(horizontal: 25,
      vertical: 18),
      child: Text(text),);
  }
}
