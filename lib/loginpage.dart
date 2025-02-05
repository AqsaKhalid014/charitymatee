import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sahara_homepage/Homescreen.dart';
import 'package:sahara_homepage/main.dart';
import 'package:sahara_homepage/signup%20screen.dart';
import 'main.dart';
import 'functions.dart';

class loginPage extends StatefulWidget {
  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  login(String email, String password) async {
    if (email == "" && password == "") {
      functions.Dialogboxx(context, "Enter required fields");
    } else {
      UserCredential? usercredential;
      try {
        usercredential = await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: email, password: password)
            .then((onValue) {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => MyHomePage()));
        });
      } on FirebaseAuthException catch (ex) {
        return functions.Dialogboxx(context, ex.code.toString());
      }
    }
  }

  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 35,
            ),
            Lottie.asset(
              'assets/animationlottie/loginpage animation.json', // Replace with your Lottie file path
              fit: BoxFit.fill,
              height: 390,
              width: double.infinity,
              repeat: true,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //const SizedBox(height: 5), // Space from top

                SizedBox(
                  height: MediaQuery.of(context).size.height *
                      0.5, // Adjust height as needed
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 30),
                        // Email Field
                        TextFormField(
                          controller: emailcontroller,
                          decoration: InputDecoration(
                            labelText: "Email",
                            prefixIcon:
                                const Icon(Icons.email, color: Colors.teal),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        // Password Field
                        TextFormField(
                          controller: passwordcontroller,
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: "Password",
                            prefixIcon:
                                const Icon(Icons.lock, color: Colors.teal),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),
                        // Login Button
                        SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.teal,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onPressed: () {
                              login(emailcontroller.text.toString(),
                                  passwordcontroller.text.toString());
                            },
                            child: const Text(
                              "LOGIN",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        // Signup Text
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Don't have an account?"),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => signuppage()));
                              },
                              child: const Text(
                                "Sign up",
                                style: TextStyle(color: Colors.teal),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
