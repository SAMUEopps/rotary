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
      home: NavigationOnePage(),
    );
  }
}

class NavigationOnePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up Page'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text('Jane Doe'),
              accountEmail: null,
              currentAccountPicture: CircleAvatar(
                child: Icon(Icons.person),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ListTile(
                      title: const Text('Join/Journey'),
                      onTap: () {
                        // Add functionality for 'Join/Journey' link
                      },
                    ),
                    ListTile(
                      title: const Text('Rotary Resources'),
                      onTap: () {
                        // Add functionality for 'Rotary Resources' link
                      },
                    ),
                    ListTile(
                      title: const Text('Event Repository'),
                      onTap: () {
                        // Add functionality for 'Event Repository' link
                      },
                    ),
                    ListTile(
                      title: const Text('Content & Posts'),
                      onTap: () {
                        // Add functionality for 'Content & Posts' link
                      },
                    ),
                    ListTile(
                      title: const Text('Merchandise'),
                      onTap: () {
                        // Add functionality for 'Merchandise' link
                      },
                    ),
                    ListTile(
                      title: const Text('Donate'),
                      onTap: () {
                        // Add functionality for 'Donate' link
                      },
                    ),
                    ListTile(
                      title: const Text('Other Events'),
                      onTap: () {
                        // Add functionality for 'Other Events' link
                      },
                    ),
                    ListTile(
                      title: const Text('Tours & Adventures'),
                      onTap: () {
                        // Add functionality for 'Tours & Adventures' link
                      },
                    ),
                    ListTile(
                      title: const Text('About'),
                      onTap: () {
                        // Add functionality for 'About' link
                      },
                    ),
                    ListTile(
                      title: const Text('Settings'),
                      onTap: () {
                        // Add functionality for 'Settings' link
                      },
                    ),
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      child: Image.asset(
                        'assets/logo_placeholder.png', // Replace with the path to your image
                        width: 100,
                        height: 100,
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
