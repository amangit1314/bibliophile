import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Textt extends StatelessWidget {
  final String text;
  final double? size;
  final Color? color;
  final FontWeight? weight;

  const Textt(
      {Key? key, this.size, this.weight, required this.text, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
          fontSize: size,
          color: color,
          fontWeight: weight,
        ),
      ),
      textAlign: TextAlign.center,
    );
  }
}
