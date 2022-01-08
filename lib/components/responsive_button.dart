import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//import '../colors.dart';

class ResponsiveButton extends StatelessWidget {
  final bool? isResponsive;
  final double? width;
  final String? content;

  const ResponsiveButton(
      {Key? key, this.width, this.isResponsive = false, this.content = ""})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xFF1D1055),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Image.asset("img/button-one.png"),
          Text(
            content!,
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(color: Colors.white, fontSize: 18),
            ),
          )
        ],
      ),
    );
  }
}
