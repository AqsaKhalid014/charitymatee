import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sahara_homepage/postscreen.dart';
import 'package:sahara_homepage/splashscreen.dart';
import 'Homescreen.dart';
import 'profilescreen.dart';
import 'searchscreen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyC3emHhfQ-yG5ixf2xMnUnkK8amgNokZzw",
          appId: '1:129550855747:android:c824144550d988bee0eef6',
          messagingSenderId: "129550855747",
          projectId: "charitymate-bc611"));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  int current_index = 0;
  final screen = [Homepage(), searchscreen(), postscreen(), Profilescreen()];

  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: current_index,
          onTap: (value) {
            current_index = value;
            setState(() {});
          },
          unselectedIconTheme: IconThemeData(color: Colors.grey),
          selectedIconTheme: IconThemeData(color: Colors.black),
          unselectedFontSize: 8,
          selectedFontSize: 10,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.camera_alt_rounded), label: 'Posting'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), label: 'Profile'),
          ]),
      backgroundColor: Colors.brown.shade100,
      body: screen[current_index],
    );
  }
}
