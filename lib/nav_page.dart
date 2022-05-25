import 'package:flutter/material.dart';
import 'package:wine/buttons/bottom_tab.dart';
import 'package:wine/checkout.dart';
import 'package:wine/home.dart';
import 'package:wine/profile.dart';

class NavPage extends StatefulWidget {
  @override
  _NavPageState createState() => _NavPageState();
}

class _NavPageState extends State<NavPage> {
  int currentSelected = 0;
  final List<Widget> _pages = [
    HomePage(),
    Cart(),
    MyProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomTab(),
      body: _pages[currentSelected],
    );
  }
}
