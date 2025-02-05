import 'dart:async';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sahara_homepage/loginpage.dart';
import 'package:sahara_homepage/welcome%20screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => WelcomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Lottie.asset(
              'assets/animationlottie/splashscreen animation 2.json',
              fit: BoxFit.fill,
              height: 300,
              width: 300,
            ),
          ),
          SizedBox(
            height: 9,
          ),
          Center(
            child: DefaultTextStyle(
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              child: AnimatedTextKit(
                animatedTexts: [
                  ScaleAnimatedText('Charity Mate'),
                ],
                repeatForever: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
