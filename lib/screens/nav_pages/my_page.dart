//import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:book_info/models/user.dart';
import 'package:book_info/screens/nav_pages/edit_my_page.dart';
import 'package:book_info/utils/user_preferences.dart';
import 'package:book_info/components/app_bar_widget.dart';
import 'package:book_info/components/button_widget.dart';
import 'package:book_info/components/numbers_widget.dart';
import 'package:book_info/components/profile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyPage extends StatefulWidget {
  //String routeName;

  const MyPage({Key? key}) : super(key: key);

  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    const user = UserPreferences.myUser;

    return Builder(
      builder: (context) => Scaffold(
        appBar: buildAppBar(context),
        body: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            ProfileWidget(
              imagePath: user.imagePath,
              onClicked: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const EditMyPage()),
                );
              },
            ),
            const SizedBox(height: 24),
            buildName(user),
            const SizedBox(height: 24),
            Center(child: buildUpgradeButton()),
            const SizedBox(height: 24),
            const NumbersWidget(),
            const SizedBox(height: 30),
            buildAbout(user),
          ],
        ),
      ),
    );
  }

  Widget buildName(User user) => Column(
        children: [
          Text(
            user.name,
            style: GoogleFonts.poppins(
                textStyle:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
          ),
          const SizedBox(height: 4),
          Text(
            user.email,
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(color: Colors.grey)),
          )
        ],
      );

  Widget buildUpgradeButton() => ButtonWidget(
        text: 'Upgrade To PRO',
        onClicked: () {},
      );

  Widget buildAbout(User user) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About',
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 16),
            Text(
              user.about,
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(fontSize: 16, height: 1.4)),
            ),
          ],
        ),
      );
}
