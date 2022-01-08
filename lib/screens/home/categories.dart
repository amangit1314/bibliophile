import 'package:book_info/components/text.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  var images = {
    "1.png": "Reading",
    "2.png": "Hiking",
    "3.png": "Kayaking",
    "4.png": "Snorkling",
    "5.png": "Riding",
    "6.png": "Parking",
    "7.png": "Watching",
    "8.png": "Snowboarding",
    "9.png": "Skydiving",
    "10.png": "Sailing",
    "11.png": "Surfing",
    "12.png": "Talking",
  };
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      height: 120,
      width: double.maxFinite,
      //margin: const EdgeInsets.only(left: 20),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 12,
        itemBuilder: (ctx, index) {
          return Column(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 15),
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage('assets/' + images.keys.elementAt(index)),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Container(
                margin: const EdgeInsets.only(top: 1),
                child: Expanded(
                  child: Center(
                    child: Textt(
                      text: images.values.elementAt(index),
                      color: Colors.black26,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
