import 'package:flutter/material.dart';
import 'package:rotary/club_page2.dart';
import 'package:rotary/club_page3.dart';
import 'package:rotary/club_page4.dart';
import 'package:rotary/club_page5.dart';
import 'package:rotary/club_page7.dart';

import 'club_page.dart';
import 'club_page6.dart';

void main() => runApp(const ClubPageOne());

class ClubPageOne extends StatelessWidget {
  const ClubPageOne({Key? key}) : super(key: key);

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
                    'Rotary District 9212',
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
                backgroundColor: Colors.green, // Customize the color if needed
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
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SingleChildScrollView(
                  scrollDirection:
                      Axis.horizontal, // Enable horizontal scrolling
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
                const SizedBox(height: 20.0),
                Container(
                  height: 300.0,
                  color: Colors.white,
                  child: Container(
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 20.0),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.circle, size: 8.0, color: Colors.black),
                    SizedBox(width: 6.0),
                    Icon(Icons.circle, size: 8.0, color: Colors.black),
                    SizedBox(width: 6.0),
                    Icon(Icons.circle, size: 8.0, color: Colors.black),
                  ],
                ),
                const SizedBox(height: 20.0),
                const Center(
                  child: Text(
                    'Welcome to Rotary Club Of Muthaiga',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 20.0),
                const Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Rotary Club Of Muthaiga',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Center(
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in velit vitae turpis posuere volutpat a in tortor.',
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
