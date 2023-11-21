import 'package:flutter/material.dart';
import 'main_page1.dart';
import 'main_page3.dart';
import 'club_page.dart';
import 'club_status.dart';

void main() => runApp(const MainPageTwo());

class MainPageTwo extends StatelessWidget {
  const MainPageTwo({Key? key}) : super(key: key);

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
                            MaterialPageRoute(
                                builder: (context) => MainPageOne()),
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
                                builder: (context) => MainPageTwo()),
                          );
                        },
                        child: Container(
                          height: 30.0,
                          width: 100.0, // Set a fixed width for each item
                          color: Colors.grey,
                          child: const Center(
                            child: Text(
                              'Clubs',
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
                                builder: (context) => MainPageThree()),
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
                Container(
                  height: 2.0,
                  color: Colors.black,
                  margin: const EdgeInsets.symmetric(vertical: 20.0),
                ),
                InkWell(
                  onTap: () {
                    // Functionality to navigate to the "Club Page" here.
                    // For example:
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ClubPage()),
                    );
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Container(
                      height: 60.0,
                      color: Colors.grey,
                      child: Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          Positioned(
                            left: 10.0,
                            child: InkWell(
                              onTap: () {
                                // Functionality to navigate to the "Club Status Page" here.
                                // For example:
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ClubStatus()),
                                );
                              },
                              child: Container(
                                width: 50.0,
                                height: 50.0,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
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
          ),
        ),
      ),
    );
  }
}
