import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign Up Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SignUpPage(),
    );
  }
}

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up Page'),
      ),
      endDrawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                title: const Text('My Schedule'),
                onTap: () {
                  // Add functionality for 'Join/Journey' link
                },
              ),
              ListTile(
                title: const Text('My Donations'),
                onTap: () {
                  // Add functionality for 'Rotary Resources' link
                },
              ),
              ListTile(
                title: const Text('My Favorites'),
                onTap: () {
                  // Add functionality for 'Event Repository' link
                },
              ),
              ListTile(
                title: const Text('My Club Dues'),
                onTap: () {
                  // Add functionality for 'Content & Posts' link
                },
              ),
              ListTile(
                title: const Text('My Cart'),
                onTap: () {
                  // Add functionality for 'Merchandise' link
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
