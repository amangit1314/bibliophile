import 'package:book_info/components/social_card.dart';
import 'package:book_info/components/text_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Login Screen",
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              fontSize: 20,
              color: Color(0xFF1D1055),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: 270,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  image: AssetImage("assets/2.png"),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: MyTextField(
                hintText: "Email",
                prefixIcon: Icon(Icons.email_outlined),
                hPadding: 20,
                size: 16,
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: MyTextField(
                hintText: "Password",
                prefixIcon: Icon(Icons.lock_outline),
                sufixIcon: Icon(Icons.visibility_off_outlined),
                hPadding: 20,
                size: 16,
                obscureText: true,
              ),
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                const SizedBox(width: 222),
                Text(
                  "forget password?",
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 12,
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            GestureDetector(
              child: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 40),
                height: 60,
                decoration: BoxDecoration(
                  color: const Color(0xFF1D1055),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  "Login",
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              onTap: () => {Navigator.pushNamed(context, '/main')},
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: GoogleFonts.poppins(
                    textStyle:
                        const TextStyle(color: Colors.black87, fontSize: 13),
                  ),
                ),
                GestureDetector(
                  child: Text(
                    "  Register!",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  onTap: () => {Navigator.pushNamed(context, '/register')},
                ),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialCard(
                  icon: "assets/icons/google-icon.svg",
                  press: () {},
                ),
                SocialCard(
                  icon: "assets/icons/facebook-2.svg",
                  press: () {},
                ),
                SocialCard(
                  icon: "assets/icons/twitter.svg",
                  press: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
