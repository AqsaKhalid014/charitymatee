import 'package:flutter/material.dart';
import 'package:sahara_homepage/loginpage.dart';
import 'package:sahara_homepage/signup%20screen.dart';
import 'package:lottie/lottie.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  backgroundColor: Colors.teal,
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.teal.shade900,
              Colors.teal.shade400,
              Colors.teal.shade800
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomLeft,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 105),
              Text(
                "CHARITY MATE",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Lottie.asset(
                'assets/animationlottie/loginpage animation.json',
                fit: BoxFit.fill,
                height: 400,
                width: double.infinity,
                repeat: true,
              ),
              _buildButton("LOG IN", Colors.white, Colors.black, () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => loginPage()),
                );
              }),
              SizedBox(height: 20),
              _buildButton("SIGN UP", Colors.white, Colors.black, () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => signuppage()),
                );
              }),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildButton(
      String text, Color bgColor, Color textColor, VoidCallback onPressed) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor,
          minimumSize: Size(double.infinity, 50),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        ),
        onPressed: onPressed,
        child: Text(text, style: TextStyle(color: textColor, fontSize: 18)),
      ),
    );
  }
}
