import 'package:flutter/material.dart';
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
      home: Scaffold(
        body: Stack(
          children: [
            // Background gradient
            Container(
              decoration: BoxDecoration(
                color: Color(0xFF121212),
              ),
            ),
            // This is an idea of the cards for each apartment
            // Positioned(
            //   top: 300,
            //   bottom: 300,
            //   child: Container(
            //     width: 350,
            //     height: 200,
            //     decoration: BoxDecoration(
            //         borderRadius: BorderRadius.only(
            //           topLeft: Radius.circular(25),
            //           topRight: Radius.circular(25),
            //         ),
            //         boxShadow: [
            //           BoxShadow(
            //             color: Colors.black,
            //             offset: const Offset(
            //               0.0,
            //               0.0,
            //             ),
            //             blurRadius: 10.0,
            //             spreadRadius: 10.0,
            //           )
            //         ],
            //         gradient: LinearGradient(
            //           begin: Alignment.bottomLeft,
            //           end: Alignment.topRight,
            //           colors: [
            //             Color(0xFF393939),
            //             Color(0xFF515151),
            //             Color(0xFF000000),
            //           ],
            //           stops: [0.0, 0.5, 1.0],
            //         )
            //     ),
            //   ),
            // ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
                decoration: BoxDecoration(
                  color: Color(0xFF121212),
                ),
              ),
            ),
            // Bottom navigation bar positioned at the bottom of the Stack
            //     Notes:
            //       width: MediaQuery.of(context).size.width,
            //       height: MediaQuery.of(context).size.height,
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
                child: GNav(
                  backgroundColor: Colors.transparent,
                  color: Colors.white,
                  tabActiveBorder: Border.all(color: Colors.grey, width: 2),
                  rippleColor: Colors.transparent,
                  activeColor: Colors.white,
                  gap: 8,
                  padding: EdgeInsets.all(16),
                  tabs: const [
                    GButton(
                      icon: Icons.home,
                      text: 'Home',
                    ),
                    GButton(
                      icon: Icons.map,
                      text: 'Locations',
                    ),
                    GButton(
                      icon: Icons.local_police,
                      text: 'UTSA PD',
                    ),
                    GButton(
                      icon: Icons.settings,
                      text: 'Settings',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
