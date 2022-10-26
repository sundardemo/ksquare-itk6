import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myfirstapp/screens/about.dart';
import 'package:myfirstapp/screens/contact.dart';
import 'package:myfirstapp/screens/home.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 2;
  List<Widget> _pages = [
    HomeScreen(),
    AboutScreen(),
    ContactScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: ((selectedIndex) {
            setState(() {
              _currentIndex = selectedIndex;
            });
          }),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "About"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "contact"),
          ]),
    );
  }
}
