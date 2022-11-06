import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'utils.dart';
import 'home_page.dart';

class TabPage extends StatefulWidget {
  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  int _selectedPageIndex = 0;

  List _pages = [
    HomePage(),
    Text('page2'),
    Text('page3'),
    Text('page4'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: _pages[_selectedPageIndex]
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: HexColor("#161A24"),
        color: HexColor("#D9DDDC"),
        onTap: (index) {
          setState(() {
            _selectedPageIndex = index;
          });
        },
        items: [
          Icon(Icons.home),
          Icon(Icons.bar_chart),
          Icon(Icons.volunteer_activism),
          Icon(Icons.settings),
        ],
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
     _selectedPageIndex = index;
    });
  }
}