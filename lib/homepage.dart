import 'package:flutter/material.dart';
import 'package:flutter_testing/pages/help.dart';
import 'package:flutter_testing/pages/home.dart';
import 'package:flutter_testing/pages/locations.dart';
import 'package:flutter_testing/pages/settings.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key : key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    UserHome(),
    UserLocations(),
    UserHelp(),
    UserSettings(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        // padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 2.0),
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: Colors.black),
          ),
          color: Color(0xFF121212),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: _navigateBottomBar,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.location_city), label: 'Locations'),
            BottomNavigationBarItem(icon: Icon(Icons.help), label: 'Help'),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
          ],
          backgroundColor: Color(0xff171a21), // 0xFF121212
          selectedItemColor: Colors.blueAccent,
          unselectedItemColor: Colors.white,
          unselectedFontSize: 0,
          selectedFontSize: 0,
        ),
      ),
    );
  }
}