import 'package:book_info/screens/nav_pages/my_page.dart';
import 'package:book_info/components/text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final authService = Provider.of<AuthService>(context);
    return Material(
      color: Colors.black,
      child: SafeArea(
        child: Theme(
          data: ThemeData(brightness: Brightness.dark),
          child: Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(
                          left: 28.0, right: 28.0, top: 46.0, bottom: 10.0),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/gif.gif'),
                        radius: 50,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 28.0),
                      child: Textt(
                        text: 'Aman Soni',
                        size: 24,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
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
                        Get.to(const MyPage());
                      },
                    ),
                    GestureDetector(
                      child: const ListTile(
                        leading: Icon(Icons.shopping_bag_outlined, size: 30),
                        title: Text(
                          'Book Bag',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      onTap: () {
                        // Get.to(const GroupsScreen(
                        //   child: MyDrawer(),
                        // ));
                      },
                    ),
                    GestureDetector(
                      child: const ListTile(
                        leading: FaIcon(FontAwesomeIcons.book),
                        title: Text(
                          'Readed Books',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      onTap: () {
                        // Get.to(const VoiceCallsListScreen());
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
                        // Get.to(const Settings());
                      },
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: GestureDetector(
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
