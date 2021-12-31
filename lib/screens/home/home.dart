// ignore_for_file: unused_label

import 'package:book_info/screens/home/scroll_view.dart';
import 'package:book_info/utils/widgets/text.dart';
//import 'package:book_info/utils/widgets/tile_item.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List books = ['1.png', '2.png', '3.png'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
          onPressed: () {
            const Drawer();
          },
        ),
        actions: [
          Container(
            margin: const EdgeInsets.all(10),
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.black,
              image: const DecorationImage(
                image: AssetImage("assets/gif.gif"),
              ),
            ),
          ),
        ],
      ),
      drawer: const Drawer(),
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 10, bottom: 16.0),
              child: Textt(
                text: "Discover",
                size: 31,
              ),
            ),
            Row(
              children: [
                GestureDetector(
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18.0),
                    child: Textt(text: "Books"),
                  ),
                ),
                GestureDetector(
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18.0),
                    child: Textt(text: "Authors"),
                  ),
                ),
                GestureDetector(
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18.0),
                    child: Textt(text: "About Books"),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const ScroleView(),
          ],
        ),
      ),
    );
  }
}
