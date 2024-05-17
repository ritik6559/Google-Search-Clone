import 'package:flutter/material.dart';
import 'package:googleclone/screens/home_screen/home_screen.dart';
import 'package:googleclone/screens/home_screen/screen_types/mobile_screen_layout.dart';
import 'package:googleclone/screens/home_screen/screen_types/web_screen_layout.dart';
import 'package:googleclone/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Google Clone',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(
        mobileScreenLayout: MobileScreenLayout(), 
        webScreenLayout: WebScreenLayout()),
    );
  }
}

