import 'package:animated_theme_switcher/animated_theme_switcher.dart';
//import 'package:book_info/utils/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context) {
  final isDarkMode = Theme.of(context).brightness == Brightness.dark;
  final icon = CupertinoIcons.moon_stars;

  return AppBar(
    leading: const BackButton(),
    backgroundColor: Colors.transparent,
    elevation: 0,
    actions: [
      ThemeSwitcher(
        builder: (context) => IconButton(
          icon: Icon(
            icon,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
      ),
    ],
  );
}
