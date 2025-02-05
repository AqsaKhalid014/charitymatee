import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sahara_homepage/profilemorescreen.dart';

class Profilescreen extends StatefulWidget {
  const Profilescreen({super.key});

  @override
  State<Profilescreen> createState() => _ProfileState();
}

class _ProfileState extends State<Profilescreen> {
  String userName = "Loading..."; // Default text before fetching username

  @override
  void initState() {
    super.initState();
    _loadUsername();
  }

  // Function to get the username from FirebaseAuth
  void _loadUsername() {
    User? user = FirebaseAuth.instance.currentUser;
    setState(() {
      userName = user?.displayName ?? "Unknown User";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 290,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 40),
                  Row(
                    children: [
                      const Spacer(),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => profilemorescreen(),
                            ),
                          );
                        },
                        icon: const Icon(
                          Icons.more_vert,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      const SizedBox(width: 10),
                    ],
                  ),
                  const CircleAvatar(
                    radius: 65,
                    // backgroundImage: AssetImage('assets/profile_pic.png'),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    userName,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: ListTile(
                        trailing: Icon(Icons.arrow_forward_ios_sharp),
                        title: Text('Account'),
                        leading: Icon(Icons.account_circle_outlined),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: ListTile(
                        trailing: Icon(Icons.arrow_forward_ios_sharp),
                        title: Text('Notification'),
                        leading: Icon(Icons.notifications_none),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: ListTile(
                        trailing: Icon(Icons.arrow_forward_ios_sharp),
                        title: Text('Help & Support'),
                        leading: Icon(Icons.help_outline_rounded),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: ListTile(
                        trailing: Icon(Icons.arrow_forward_ios_sharp),
                        title: Text('Send Feedback'),
                        leading: Icon(Icons.feedback_outlined),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: ListTile(
                        trailing: Icon(Icons.arrow_forward_ios_sharp),
                        title: Text('Terms & Conditions'),
                        leading: Icon(Icons.terminal_sharp),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: ListTile(
                        trailing: Icon(Icons.arrow_forward_ios_sharp),
                        title: Text('Logout'),
                        leading: Icon(Icons.logout),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
