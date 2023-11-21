import 'package:flutter/material.dart';
import 'package:rotary/club_page2.dart';
import 'package:rotary/club_page3.dart';
import 'package:rotary/club_page4.dart';
import 'club_page.dart';
import 'club_page1.dart';
import 'club_page5.dart';
import 'club_page6.dart';

void main() => runApp(const ClubPageSeven());

class ClubPageSeven extends StatelessWidget {
  const ClubPageSeven({Key? key}) : super(key: key);

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
                  height: 200.0,
                  color: Colors.white,
                  child: Container(
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 20.0),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(right: 8.0),
                        height: 2.0,
                        color: Colors.black,
                      ),
                    ),
                    const Text(
                      'Our Socials',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(left: 8.0),
                        height: 2.0,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8.0),
                FractionallySizedBox(
                  widthFactor: 0.8, // Adjust this value as needed
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.facebook,
                        size: MediaQuery.of(context).size.width *
                            0.08, // Responsive size
                        color: Colors.blue,
                      ),
                      Icon(
                        Icons.facebook,
                        size: MediaQuery.of(context).size.width *
                            0.08, // Responsive size
                        color: Colors.pink,
                      ),
                      Icon(
                        Icons.facebook,
                        size: MediaQuery.of(context).size.width *
                            0.08, // Responsive size
                        color: Colors.blue,
                      ),
                      Icon(
                        Icons.facebook,
                        size: MediaQuery.of(context).size.width *
                            0.08, // Responsive size
                        color: Colors.red,
                      ),
                      Icon(
                        Icons.facebook,
                        size: MediaQuery.of(context).size.width *
                            0.08, // Responsive size
                        color: Colors.blue,
                      ),
                      Icon(
                        Icons.facebook,
                        size: MediaQuery.of(context).size.width *
                            0.08, // Responsive size
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8.0),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 2.0,
                        color: Colors.black,
                        margin: const EdgeInsets.only(right: 8.0),
                      ),
                    ),
                    const Text(
                      'Contact District Admin',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 2.0,
                        color: Colors.black,
                        margin: const EdgeInsets.only(left: 8.0),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8.0),
                const SizedBox(height: 16.0),
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'First Name',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 12.0),
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Last Name',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 12.0),
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Email Address',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 12.0),
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Subject',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 12.0),
                const TextField(
                  maxLines: 3,
                  decoration: InputDecoration(
                    labelText: 'Message',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 12.0),
                const Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed aliquet neque sed bibendum viverra.',
                  style: TextStyle(fontSize: 16.0),
                ),
                const SizedBox(height: 12.0),
                ElevatedButton(
                  onPressed: () {
                    // Add functionality for the submit button
                  },
                  child: const Text('Submit'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
