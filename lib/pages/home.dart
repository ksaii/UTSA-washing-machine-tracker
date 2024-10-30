import 'package:flutter/material.dart';

class UserHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            // Background gradient
            Container(
              height: MediaQuery.of(context).size.height * 1.05, // Make height larger to have enough scrollable room
              decoration: BoxDecoration(
                color: Color(0xff171a21),
              ),
            ),
            Positioned(
              top: 30,
              left: 85,
              width: 250,
              child: Image.asset('assets/roadrunner.png'),
            ),
            // This is an idea of the cards for each apartment
            Positioned( // Overlay
              top: 275,
              bottom: 0,
              left: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      offset: const Offset(
                        0.0,
                        0.0,
                      ),
                      blurRadius: 15.0,
                      spreadRadius: 1.0,
                    )
                  ],
                  color: Color(0xff171a21),
                ),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    "UTSA Locations",
                    style: TextStyle(
                        color: Colors.white,
                        height: 5,
                        fontSize: 25
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 400,
              right: 30,
              height: 135,
              width: MediaQuery.of(context).size.width * 0.85,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      offset: const Offset(
                        0.0,
                        0.0,
                      ),
                      blurRadius: 15.0,
                      spreadRadius: 1.0,
                    )
                  ],
                  color: Color(0xff292e37),
                ),
              ),
            ),
            Positioned(
              bottom: 225,
              right: 30,
              height: 135,
              width: MediaQuery.of(context).size.width * 0.85,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      offset: const Offset(
                        0.0,
                        0.0,
                      ),
                      blurRadius: 15.0,
                      spreadRadius: 1.0,
                    )
                  ],
                  color: Color(0xff292e37),
                ),
              ),
            ),
            Positioned(
              bottom: 50,
              right: 30,
              height: 135,
              width: MediaQuery.of(context).size.width * 0.85,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      offset: const Offset(
                        0.0,
                        0.0,
                      ),
                      blurRadius: 15.0,
                      spreadRadius: 1.0,
                    )
                  ],
                  color: Color(0xff292e37),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
