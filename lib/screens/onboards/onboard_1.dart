import 'package:book_info/components/responsive_button.dart';
import 'package:book_info/components/text.dart';
//import 'package:book_info/screens/authentication/register_screen.dart';
import 'package:flutter/material.dart';
//import 'package:get/get.dart';

class Onboard1 extends StatelessWidget {
  const Onboard1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(height: 30),
          const Image(
            image: AssetImage(
              "assets/1.png",
            ),
          ),
          const SizedBox(height: 20),
          const Textt(
            text: 'Book`club',
            color: Colors.pinkAccent,
            size: 31,
            weight: FontWeight.w600,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30, right: 25),
            child: Textt(
              text:
                  'Lets start the book library for you the book library for you the book library for you the book library for you',
              color: Colors.black,
              size: 16,
            ),
          ),
          const SizedBox(height: 10),
          Center(
            widthFactor: 3,
            child: GestureDetector(
              child: const ResponsiveButton(
                width: 275,
                content: "Get Started!",
              ),
              onTap: () => {Navigator.pushNamed(context, '/register')},
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
