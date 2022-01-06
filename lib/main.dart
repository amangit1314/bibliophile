// import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:book_info/screens/authentication/login.dart';
import 'package:book_info/screens/home/home.dart';
import 'package:book_info/screens/nav_pages/main_page.dart';
import 'package:book_info/screens/onboards/onboard_1.dart';
import 'package:book_info/utils/themes.dart';
import 'package:book_info/utils/user_preferences.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:theme_provider/theme_provider.dart';
import 'screens/authentication/register_screen.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const String title = 'Darshan';

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const user = UserPreferences.myUser;

    return Builder(
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        themeMode: ThemeMode.system,
        home: const Onboard1(),
        routes: {
          '/onboard1': (context) => const Onboard1(),
          '/home': (context) => const Home(),
          '/register': (context) => const RegistrationScreen(),
          '/login': (context) => const Login(),
          '/main': (context) => const MainPage(),
        },
      ),
    );
  }
}
