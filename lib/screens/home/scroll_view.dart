import 'package:book_info/utils/widgets/tile_item.dart';
import 'package:flutter/material.dart';

class ScroleView extends StatelessWidget {
  const ScroleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          Padding(
            padding: EdgeInsets.only(right: 21.0, top: 10),
            child: TileItem(
              image: AssetImage('assets/1.png'),
              height: 300,
              width: 200,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 21.0, top: 10),
            child: TileItem(
              image: AssetImage('assets/2.png'),
              height: 300,
              width: 200,
              color: Colors.red,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 21.0, top: 10),
            child: TileItem(
              image: AssetImage('assets/3.png'),
              height: 300,
              width: 200,
              color: Colors.yellow,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 21.0, top: 10),
            child: TileItem(
              image: AssetImage('assets/4.png'),
              height: 300,
              width: 200,
              color: Colors.blue,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 21.0, top: 10),
            child: TileItem(
              image: AssetImage('assets/5.png'),
              height: 300,
              width: 200,
              color: Colors.green,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 21.0, top: 10),
            child: TileItem(
              image: AssetImage('assets/6.png'),
              height: 300,
              width: 200,
              color: Colors.cyan,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 21.0, top: 10),
            child: TileItem(
              image: AssetImage('assets/7.png'),
              height: 300,
              width: 200,
              color: Colors.purple,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 21.0, top: 10),
            child: TileItem(
              image: AssetImage('assets/8.png'),
              height: 300,
              width: 200,
              color: Colors.deepPurple,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 21.0, top: 10),
            child: TileItem(
              image: AssetImage('assets/9.png'),
              height: 300,
              width: 200,
              color: Colors.pink,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 21.0, top: 10),
            child: TileItem(
              image: AssetImage('assets/10.png'),
              height: 300,
              width: 200,
              color: Colors.orange,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 21.0, top: 10),
            child: TileItem(
              image: AssetImage('assets/11.png'),
              height: 300,
              width: 200,
              color: Colors.deepOrange,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 21.0, top: 10),
            child: TileItem(
              image: AssetImage('assets/12.png'),
              height: 300,
              width: 200,
              color: Colors.indigo,
            ),
          ),
        ],
      ),
    );
  }
}
