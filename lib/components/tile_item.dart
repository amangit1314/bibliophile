import 'package:flutter/material.dart';

class TileItem extends StatelessWidget {
  final double? size;
  final Color? color;
  final double? width;
  final double? height;
  final AssetImage image;

  const TileItem(
      {Key? key,
      this.size,
      this.color,
      this.width,
      this.height,
      required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
