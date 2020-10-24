import 'dart:ui';
import 'package:flutter/material.dart';
import 'Home.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> _a = [
      Home(),
      Home(),
      Home(),
      Home(),
    ];
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: _a.elementAt(_index),
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 40,
          backgroundColor: Colors.red,
          onTap: onTabTapped,
          currentIndex: _index,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.car_rental,
              ),
              backgroundColor: Color.fromRGBO(74, 82, 193, 1),
              title: Text('الوكالات'),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.car_rental,
              ),
              backgroundColor: Color.fromRGBO(74, 82, 193, 1),
              title: Text('الخدمات'),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.car_rental,
              ),
              backgroundColor: Color.fromRGBO(74, 82, 193, 1),
              title: Text('التثمين'),
            ),
            BottomNavigationBarItem(
              backgroundColor: Color.fromRGBO(74, 82, 193, 1),
              icon: Icon(
                Icons.car_rental,
                color: Colors.white,
              ),
              title: Text('التامين'),
            ),
          ],
        ),
      ),
    );
  }

  onTabTapped(int index) {
    setState(() {
      _index = index;
    });
  }
}
