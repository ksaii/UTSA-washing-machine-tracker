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
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF00162C),
                Color(0xFF001529),
                Color(0xFF001427),
              ],
              stops: [0.0, 0.5, 1.0],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
            child: GNav(
              backgroundColor: Colors.transparent,
              color: Colors.white,
              // tabBackgroundColor: Colors.indigo.shade900,
              tabActiveBorder: Border.all(color: Colors.grey, width: 1),
              rippleColor: Colors.white10,
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

        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF001427),
                      Color(0xFF00488D),
                      Color(0xFF000000),
                    ],
                    stops: [0.0, 0.0, 0.42],
                  )
              ),
            ),
            Positioned(
              top: 250,
              child: Container(
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      offset: const Offset(
                        5.0,
                        5.0,
                      ),
                      blurRadius: 10.0,
                      spreadRadius: 10.0,
                    )
                  ],
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF00162C),
                      Color(0xFF001529),
                      Color(0xFF001427),
                    ],
                    stops: [0.0, 0.5, 1.0],
                  )
                ),
              ),
            ),
          ],
        ),
        // body: Container(
        //   decoration: const BoxDecoration(
        //     gradient: LinearGradient(
        //       begin: Alignment.topCenter,
        //       end: Alignment.bottomCenter,
        //       colors: [
        //         Color(0xFF001427),
        //         Color(0xFF00488D),
        //         Color(0xFF000000),
        //       ],
        //       stops: [0.0, 0.0, 0.42],
        //     ),
        //   ),
        //   child: Center(
        //     child: Text('data'),
        //   ),
        // ),
      ),
    );
  }
}
