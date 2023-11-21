import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
        backgroundColor: Colors.white,
        title: Container(
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          child: const Row(
            children: [
              Expanded(
                child: TextField(
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    hintText: 'Search',
                    hintStyle: TextStyle(color: Colors.black),
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search, color: Colors.black),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        leading: Container(
          padding: const EdgeInsets.only(left: 14.0),
          child: IconButton(
            icon: const Icon(Icons.account_circle, color: Colors.black),
            onPressed: () {
              // Add functionality for the avatar icon
            },
          ),
        ),
        actions: [
          Container(
            padding: const EdgeInsets.only(right: 14.0),
            child: IconButton(
              icon: const Icon(Icons.menu, color: Colors.black),
              onPressed: () {
                // Add functionality for the hamburger menu icon
              },
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 16.0), // Add space between AppBar and body
          Container(
            height: 2.0,
            color: Colors.black, // Draw a line
          ),
          const SizedBox(height: 16.0),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      height: 400.0,
                      color: Colors.white,
                      child: Column(
                        children: [
                          Container(
                            height: 50.0,
                            decoration: const BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.0),
                                topRight: Radius.circular(20.0),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              color: Colors.grey,
                            ),
                          ),
                          Container(
                            height: 50.0,
                            decoration: const BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20.0),
                                bottomRight: Radius.circular(20.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16.0), // Add spacing between boxes
                    Container(
                      height: 150.0,
                      color: Colors.grey,
                      child: const Center(
                        child: Text(
                          'New Box',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
