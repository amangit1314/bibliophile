import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final double? size;
  final Color? color;
  final FontWeight? weight;
  final TextInputType? inputType;
  final bool? obscureText;
  final bool? enabled;
  final Icon prefixIcon;
  final Icon? sufixIcon;
  final double? hPadding;

  const MyTextField({
    Key? key,
    required this.hintText,
    this.controller,
    this.color,
    this.size,
    this.weight,
    this.inputType,
    this.obscureText = false,
    this.enabled,
    required this.prefixIcon,
    this.sufixIcon,
    this.hPadding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText ?? false,
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: GoogleFonts.poppins(
          textStyle: TextStyle(color: Colors.black38, fontSize: size),
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        prefixIcon: prefixIcon,
        suffixIcon: sufixIcon,
        contentPadding:
            EdgeInsets.symmetric(horizontal: hPadding!, vertical: 15),
      ),
    );
  }
}
