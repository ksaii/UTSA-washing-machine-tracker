import 'package:flutter/material.dart';
import 'homepage.dart';
import 'package:flutter_testing/main.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // This sets the device theme to IOS, it will help us see how the app
      // will behave on IOS devices.
      // TODO: On IOS when scrolling, it shows white on top and bottom.
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      //   // The line below forces the theme to iOS.
      //   platform: TargetPlatform.iOS,
      // ),
      home: HomePage(),
    );
  }
}