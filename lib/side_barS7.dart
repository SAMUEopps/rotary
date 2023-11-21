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
      home:
          const SideBarSSeven(), // Replace with the home screen widget you want to show initially
    );
  }
}

class SideBarSSeven extends StatelessWidget {
  const SideBarSSeven({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign Up Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Container(
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            child: const Row(
              children: [
                Expanded(
                  child: Text(
                    'How To Join Rotary Organisation',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          leading: Container(
            padding: const EdgeInsets.only(left: 14.0),
            child: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {
                // Add functionality for the arrow back icon
              },
            ),
          ),
          actions: [
            Container(
              padding: const EdgeInsets.only(right: 14.0),
              child: CircleAvatar(
                backgroundColor: Colors.green,
                radius: 14.0,
                child: IconButton(
                  icon: const Icon(Icons.menu, color: Colors.white, size: 16.0),
                  onPressed: () {
                    // Add functionality for the small green circle icon
                  },
                ),
              ),
            ),
          ],
        ),
        body: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Text(
                'To Become A Member of A Club The Following Steps Are Typically Involved',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                '(1)',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18.0,
                  //fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                'Attend a minimum of 3 club meetings organized by the Rotary/Rotaract/Interact Club.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ),
            // Add other widgets below if needed
          ],
        ),
      ),
    );
  }
}
