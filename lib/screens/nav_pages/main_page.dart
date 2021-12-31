import 'package:book_info/screens/nav_pages/bar_item_page.dart';
import 'package:book_info/screens/nav_pages/my_page.dart';
import 'package:book_info/screens/nav_pages/search_page.dart';
import 'package:flutter/material.dart';

import '../home/home.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = const [
    Home(),
    BarItemPage(),
    SearchPage(),
    MyPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[0],
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.blue,
        elevation: 0,
        backgroundColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.apps, color: Colors.blue), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart_sharp, color: Colors.blue),
              label: "Bar"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Colors.blue,
              ),
              label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.blue), label: "My"),
        ],
      ),
    );
  }
}
