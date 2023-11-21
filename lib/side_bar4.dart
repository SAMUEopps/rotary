/*import 'package:flutter/material.dart';
import 'side_bar5.dart';

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
      home: SideBarFour(),
            routes: {
        '/sidebarfive': (context) => SideBarFivePage(),
      }
    );
  }
}

class SideBarFour extends StatelessWidget {
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
                child: Text(
                  'Rotary Org Resources',
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
      body: Column(
        children: [
          const SizedBox(height: 16.0),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 16.0),
 // Add spacing between boxes
                    Container(
                      height: 150.0,
                      color: Colors.grey,
                      child: const Center(
                        child: Text(
                          'The Four Way Test',
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
*/

import 'package:flutter/material.dart';
import 'home_page.dart';
import 'side_bar5.dart';

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
      /* routes: {
        '/sidebarfive': (context) => SideBarFivePage(),
      },*/
      home: const SideBarFour(),
    );
  }
}

class SideBarFour extends StatelessWidget {
  const SideBarFour({Key? key}) : super(key: key);

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
                child: Text(
                  'Rotary Org Resources',
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
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(
                  builder: (context) =>
                      HomePage(), // Replace with your homepage widget
                ),
                (route) => false,
              );
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
      body: Column(
        children: [
          const SizedBox(height: 16.0),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 16.0), // Add spacing between boxes
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SideBarFivePage()),
                        );
                      },
                      child: Container(
                        height: 150.0,
                        color: Colors.grey,
                        child: const Center(
                          child: Text(
                            'The Four Way Test',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
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
