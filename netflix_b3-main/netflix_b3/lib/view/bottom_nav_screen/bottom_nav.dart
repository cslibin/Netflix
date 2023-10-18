import 'package:flutter/material.dart';
import 'package:netflix_b3/utils/color_constant/color_constant.dart';
import 'package:netflix_b3/view/comingsoon/comingsoon.dart';
import 'package:netflix_b3/view/download/download.dart';
import 'package:netflix_b3/view/home_screen/home_screen.dart';
import 'package:netflix_b3/view/menu/menu.dart';

import '../search_screen/search_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    List _screens = [
      HomeScreen(),
      SearchScreen(),
      coming_soon(),
      download(),
      Menu(),
    ];
    return Scaffold(
      body: _screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          backgroundColor: Colors.black,
          selectedItemColor: ColorConstant.textColor,
          unselectedItemColor: Colors.grey,
          unselectedFontSize: 10,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_collection_outlined),
                label: "Coming Scoon"),
            BottomNavigationBarItem(
                icon: Icon(Icons.download), label: "Download"),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Menu")
          ]),
    );
  }
}
