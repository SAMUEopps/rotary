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
      home: const SideBarSFive(),
    );
  }
}

class SideBarSFive extends StatelessWidget {
  const SideBarSFive({Key? key}) : super(key: key);

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
                    'About The Application',
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
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 200.0,
                height: 220.0,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(height: 20.0),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  'To Become A Member of A Club The Following Steps Are Typically Involved',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  '(1)',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  'Attend a minimum of 3 club meetings organized by the Rotary/Rotaract/Interact Club.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Add functionality for 'SEND A TIP' button
                    },
                    child: const Text('SEND A TIP'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Add functionality for 'HIRE US' button
                    },
                    child: const Text('HIRE US'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Add functionality for 'SEND A FEEDBACK' button
                    },
                    child: const Text('SEND A FEEDBACK'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
