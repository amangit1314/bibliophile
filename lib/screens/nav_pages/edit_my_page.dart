import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:book_info/models/user.dart';
import 'package:book_info/utils/user_preferences.dart';
import 'package:book_info/utils/widgets/app_bar_widget.dart';
import 'package:book_info/utils/widgets/profile.dart';
import 'package:book_info/utils/widgets/text_field_widgget.dart';
import 'package:flutter/material.dart';

class EditMyPage extends StatefulWidget {
  const EditMyPage({Key? key}) : super(key: key);

  @override
  _EditMyPageState createState() => _EditMyPageState();
}

class _EditMyPageState extends State<EditMyPage> {
  User user = UserPreferences.myUser;

  @override
  Widget build(BuildContext context) => ThemeSwitchingArea(
        child: Builder(
          builder: (context) => Scaffold(
            appBar: buildAppBar(context),
            body: ListView(
              padding: EdgeInsets.symmetric(horizontal: 32),
              physics: BouncingScrollPhysics(),
              children: [
                ProfileWidget(
                  imagePath: user.imagePath,
                  isEdit: true,
                  onClicked: () async {},
                ),
                const SizedBox(height: 24),
                TextFieldWidget(
                  label: 'Full Name',
                  text: user.name,
                  onChanged: (name) {},
                ),
                const SizedBox(height: 24),
                TextFieldWidget(
                  label: 'Email',
                  text: user.email,
                  onChanged: (email) {},
                ),
                const SizedBox(height: 24),
                TextFieldWidget(
                  label: 'About',
                  text: user.about,
                  maxLines: 5,
                  onChanged: (about) {},
                ),
              ],
            ),
          ),
        ),
      );
}
