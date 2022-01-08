import 'package:book_info/components/text_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Registration Screen",
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
                  image: AssetImage("assets/3.png"),
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
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: MyTextField(
                hintText: "Confirm Password",
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
                  "Register",
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              onTap: () => {Navigator.pushNamed(context, '/login')},
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: GoogleFonts.poppins(
                    textStyle:
                        const TextStyle(color: Colors.black87, fontSize: 13),
                  ),
                ),
                GestureDetector(
                  child: Text(
                    "  Login!",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  onTap: () => {Navigator.pushNamed(context, '/login')},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
