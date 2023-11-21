import 'package:flutter/material.dart';
import 'package:rotary/club_page2.dart';
import 'package:rotary/club_page3.dart';
import 'package:rotary/club_page4.dart';
import 'club_page.dart';
import 'club_page1.dart';
import 'club_page5.dart';
import 'club_page7.dart';

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
      home: ClubPageSix(),
    );
  }
}

class ClubPageSix extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Container(
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          child: const Center(
            child: FittedBox(
              fit: BoxFit.fitWidth,
              child: Text(
                'Rotary Club Of Muthaiga',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 20.0), // Space from app bar
              SingleChildScrollView(
                scrollDirection: Axis.horizontal, // Enable horizontal scrolling
                child: Row(
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        // Functionality to navigate to the "About" page here.
                        // For example:
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ClubPage()),
                        );
                      },
                      child: Container(
                        height: 30.0,
                        width: 100.0, // Set a fixed width for each item
                        color: Colors.grey,
                        child: const Center(
                          child: Text(
                            'About',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    InkWell(
                      onTap: () {
                        // Functionality to navigate to the "About" page here.
                        // For example:
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ClubPageOne()),
                        );
                      },
                      child: Container(
                        height: 30.0,
                        width: 100.0, // Set a fixed width for each item
                        color: Colors.grey,
                        child: const Center(
                          child: Text(
                            'Merchandise',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    InkWell(
                      onTap: () {
                        // Functionality to navigate to the "About" page here.
                        // For example:
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ClubPageTwo()),
                        );
                      },
                      child: Container(
                        height: 30.0,
                        width: 100.0, // Set a fixed width for each item
                        color: Colors.grey,
                        child: const Center(
                          child: Text(
                            'Events',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    InkWell(
                      onTap: () {
                        // Functionality to navigate to the "About" page here.
                        // For example:
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ClubPageThree()),
                        );
                      },
                      child: Container(
                        height: 30.0,
                        width: 100.0, // Set a fixed width for each item
                        color: Colors.grey,
                        child: const Center(
                          child: Text(
                            'Projects',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    InkWell(
                      onTap: () {
                        // Functionality to navigate to the "About" page here.
                        // For example:
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ClubPageFour()),
                        );
                      },
                      child: Container(
                        height: 30.0,
                        width: 100.0, // Set a fixed width for each item
                        color: Colors.grey,
                        child: const Center(
                          child: Text(
                            'Leaders',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    InkWell(
                      onTap: () {
                        // Functionality to navigate to the "About" page here.
                        // For example:
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ClubPageFive()),
                        );
                      },
                      child: Container(
                        height: 30.0,
                        width: 100.0, // Set a fixed width for each item
                        color: Colors.grey,
                        child: const Center(
                          child: Text(
                            'Members',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    InkWell(
                      onTap: () {
                        // Functionality to navigate to the "About" page here.
                        // For example:
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ClubPageSix()),
                        );
                      },
                      child: Container(
                        height: 30.0,
                        width: 100.0, // Set a fixed width for each item
                        color: Colors.grey,
                        child: const Center(
                          child: Text(
                            'Gallery',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    InkWell(
                      onTap: () {
                        // Functionality to navigate to the "About" page here.
                        // For example:
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ClubPageSeven()),
                        );
                      },
                      child: Container(
                        height: 30.0,
                        width: 100.0, // Set a fixed width for each item
                        color: Colors.grey,
                        child: const Center(
                          child: Text(
                            'Contacts',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20.0), // Breathing space
              Container(
                height: 1.0, // Line height
                color: Colors.black, // Line color
              ),
              const SizedBox(height: 20.0), // Breathing space
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
              const SizedBox(height: 20.0), // Space below the three boxes
            ],
          ),
        ),
      ),
    );
  }
}
