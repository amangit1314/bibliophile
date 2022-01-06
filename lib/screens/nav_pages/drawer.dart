import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//import 'package:convo_chat/screens/chat/group/group_chat_screen.dart';
import 'package:get/get.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final authService = Provider.of<AuthService>(context);
    return Material(
      color: const Color(0xff617CDC),
      child: SafeArea(
        child: Theme(
          data: ThemeData(brightness: Brightness.dark),
          child: Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                      left: 28.0, right: 28.0, top: 46.0, bottom: 10.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/2.jpg'),
                    radius: 60,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18.0),
                  child: Text(
                    "Aman Soni",
                    style: TextStyle(
                      color: Color(0xFFEEEFF1),
                      fontFamily: 'Poppins',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                GestureDetector(
                  child: const ListTile(
                    leading: FaIcon(FontAwesomeIcons.user),
                    title: Text(
                      'Profile',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  onTap: () {
                    Get.to(const Profile());
                  },
                ),
                GestureDetector(
                  child: const ListTile(
                    leading: FaIcon(FontAwesomeIcons.users),
                    title: Text(
                      'Groups',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  onTap: () {
                    Get.to(const GroupsScreen(
                      child: MyDrawer(),
                    ));
                  },
                ),
                GestureDetector(
                  child: const ListTile(
                    leading: FaIcon(FontAwesomeIcons.voicemail),
                    title: Text(
                      'Voice Calls',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  onTap: () {
                    Get.to(const VoiceCallsListScreen());
                  },
                ),
                GestureDetector(
                  child: const ListTile(
                    leading: FaIcon(FontAwesomeIcons.video),
                    title: Text(
                      'Video Calls',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  onTap: () {
                    Get.to(const VideoCallsListScreen());
                  },
                ),
                GestureDetector(
                  child: const ListTile(
                    leading: FaIcon(FontAwesomeIcons.cog),
                    title: Text(
                      'Settings',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  onTap: () {
                    Get.to(const Settings());
                  },
                ),
                const SizedBox(height: 55),
                GestureDetector(
                  child: const ListTile(
                    leading: Icon(Icons.logout),
                    title: Text(
                      'Sign Out',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  onTap: () {
                    //authService.signOut();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
