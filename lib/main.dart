import 'package:book_info/screens/authentication/login.dart';
import 'package:book_info/screens/nav_pages/main_page.dart';
import 'package:book_info/screens/onboards/onboard_1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/authentication/register_screen.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const String title = 'Darshan';

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          brightness: Brightness.light,
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.indigo,
        ),
        themeMode: ThemeMode.system,
        home: const Onboard1(),
        routes: {
          '/onboard1': (context) => const Onboard1(),
          '/register': (context) => const RegistrationScreen(),
          '/login': (context) => const Login(),
          '/main': (context) => const MainPage(),
        },
      ),
    );
  }
}
