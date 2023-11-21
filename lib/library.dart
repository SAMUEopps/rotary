import 'package:flutter/material.dart';
import 'package:rotary/content2.dart';

import 'content1.dart';
import 'content3.dart';
import 'publications_page1.dart';
import 'side_bar1.dart';
import 'side_bar10.dart';
import 'side_bar12.dart';
import 'side_bar4.dart';
import 'side_bar6.dart';
import 'side_bar8.dart';
import 'side_barS1.dart';
import 'side_barS3.dart';
import 'side_barS5.dart';
import 'side_barS7.dart';

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
      home: LibraryPage(),
    );
  }
}

class LibraryPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  LibraryPage({super.key});
//class OpportunitiesPage extends StatelessWidget {
  //const OpportunitiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey, // Add the GlobalKey to the Scaffold
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Container(
          padding:
              const EdgeInsets.symmetric(horizontal: 10.0), // Increased padding
          decoration: BoxDecoration(
            color: Colors.grey, // Grey box color
            borderRadius: BorderRadius.circular(30.0), // Rounded corners
          ),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  width: double.infinity,
                  child: const TextField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      hintText: '',
                      hintStyle: TextStyle(color: Colors.black),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.search,
                    color: Colors.white), // Make the icon white
                onPressed: () {
                  // Add search functionality here
                },
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
              _scaffoldKey.currentState?.openDrawer();
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
                _scaffoldKey.currentState?.openEndDrawer();
              },
            ),
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey,
        child: SafeArea(
          child: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              // Close the drawer when tapping outside of the content
              Navigator.pop(context);
            },
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
                          title: const Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Join/Journey',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          onTap: () {
                            // Handle 'Join/Journey' link tap, navigate to the new page
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SideBarOne()),
                            );
                          },
                        ),
                        ListTile(
                          title: const Align(
                            alignment: Alignment.center,
                            child: Text('Rotary Resources'),
                          ),
                          onTap: () {
                            // Add functionality for 'Rotary Resources' link
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SideBarFour()),
                            );
                          },
                        ),
                        ListTile(
                          title: const Align(
                            alignment: Alignment.center,
                            child: Text('Event Repository'),
                          ),
                          onTap: () {
                            // Add functionality for 'Event Repository' link
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SideBarSix()),
                            );
                          },
                        ),
                        ListTile(
                          title: const Align(
                            alignment: Alignment.center,
                            child: Text('Content & Posts'),
                          ),
                          onTap: () {
                            // Add functionality for 'Content & Posts' link
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SideBarEight()),
                            );
                          },
                        ),
                        ListTile(
                          title: const Align(
                            alignment: Alignment.center,
                            child: Text('Merchandise'),
                          ),
                          onTap: () {
                            // Add functionality for 'Merchandise' link
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SideBarTen()),
                            );
                          },
                        ),
                        ListTile(
                          title: const Align(
                            alignment: Alignment.center,
                            child: Text('Donate'),
                          ),
                          onTap: () {
                            // Add functionality for 'Donate' link
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SideBarTwelve()),
                            );
                          },
                        ),
                        ListTile(
                          title: const Align(
                            alignment: Alignment.center,
                            child: Text('Other Events'),
                          ),
                          onTap: () {
                            // Add functionality for 'Other Events' link
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SideBarSOne()),
                            );
                          },
                        ),
                        ListTile(
                          title: const Align(
                            alignment: Alignment.center,
                            child: Text('Tours & Adventures'),
                          ),
                          onTap: () {
                            // Add functionality for 'Tours & Adventures' link
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SideBarSThree()),
                            );
                          },
                        ),
                        ListTile(
                          title: const Align(
                            alignment: Alignment.center,
                            child: Text('About'),
                          ),
                          onTap: () {
                            // Add functionality for 'About' link
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SideBarSFive()),
                            );
                          },
                        ),
                        ListTile(
                          title: const Align(
                            alignment: Alignment.center,
                            child: Text('Settings'),
                          ),
                          onTap: () {
                            // Add functionality for 'Settings' link
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SideBarSSeven()),
                            );
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
        ),
      ),
      endDrawer: Drawer(
        backgroundColor: Colors.grey,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ListTile(
                  title: const Align(
                    alignment: Alignment.center,
                    child: Text('My Schedule'),
                  ),
                  onTap: () {
                    // Add functionality for 'My Schedule' link
                  },
                ),
                ListTile(
                  title: const Align(
                    alignment: Alignment.center,
                    child: Text('My Donations'),
                  ),
                  onTap: () {
                    // Add functionality for 'My Donations' link
                  },
                ),
                ListTile(
                  title: const Align(
                    alignment: Alignment.center,
                    child: Text('My Favorites'),
                  ),
                  onTap: () {
                    // Add functionality for 'Event Repository' link
                  },
                ),
                ListTile(
                  title: const Align(
                    alignment: Alignment.center,
                    child: Text('My Club Dues'),
                  ),
                  onTap: () {
                    // Add functionality for 'Content & Posts' link
                  },
                ),
                ListTile(
                  title: const Align(
                    alignment: Alignment.center,
                    child: Text('My Cart'),
                  ),
                  onTap: () {
                    // Add functionality for 'Merchandise' link
                  },
                ),
              ],
            ),
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 20.0), // Breathing space
              Row(
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(width: 4.0),
                  Expanded(
                    flex: 3,
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 150.0,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Expanded(
                              child: ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  topRight: Radius.circular(10.0),
                                ),
                                child: Image.network(
                                    'https://firebasestorage.googleapis.com/v0/b/rotary-66829.appspot.com/o/images%2Fchiara-f-MI8He1NWPWg-unsplash.jpg?alt=media&token=2737e43d-e415-45bc-866d-61c0519d0d1e',
                                    fit: BoxFit.fill, // Set the fit to fill
                                    width: double.infinity),
                              ),
                            ),
                            Container(
                              height: 30.0,
                              decoration: const BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10.0),
                                ),
                              ),
                              child: const Center(
                                child: Text(
                                  'Saved',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20.0),
                  Expanded(
                    flex: 3,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const PublicationsPageOne()), // Replace with the desired page
                        );
                      },
                      child: Container(
                        height: 150.0,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Expanded(
                              child: ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  topRight: Radius.circular(10.0),
                                ),
                                child: Image.network(
                                    'https://firebasestorage.googleapis.com/v0/b/rotary-66829.appspot.com/o/images%2Fsignal-2023-07-03-091733_002.jpg?alt=media&token=710aba87-1229-4d2f-95dc-af7f4cadeb55',
                                    fit: BoxFit.fill, // Set the fit to fill
                                    width: double.infinity),
                              ),
                            ),
                            Container(
                              height: 30.0,
                              decoration: const BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10.0),
                                ),
                              ),
                              child: const Center(
                                child: Text(
                                  'Posts',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 4.0),
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: const Icon(
                        Icons.arrow_forward,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0.0),
                child: Column(
                  children: [
                    GestureDetector(
                      // Wrap the container with GestureDetector to handle tap events
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ContentPageOne(),
                          ),
                        );
                      },
                      child: Container(
                        height: 600.0,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Container(
                              height: 50.0,
                              decoration: const BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  topRight: Radius.circular(10.0),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // Circle Avatar
                                  const Padding(
                                    padding: EdgeInsets.only(left: 10.0),
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 20.0,
                                    ),
                                  ),

                                  // Text
                                  const Text(
                                    'Rotaract Club of Nairobi Central',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),

                                  // Share Icon
                                  IconButton(
                                    icon: const Icon(Icons.share,
                                        color: Colors.white),
                                    onPressed: () {
                                      // Handle share button pressed
                                    },
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Container(
                                color: Colors.grey,
                                child: Image.network(
                                  'https://firebasestorage.googleapis.com/v0/b/rotary-66829.appspot.com/o/images%2Fsignal-2023-07-03-091733_002.jpg?alt=media&token=710aba87-1229-4d2f-95dc-af7f4cadeb55', // Replace with your actual image URL
                                  fit: BoxFit.fill, // Set the fit to fill
                                  width: double
                                      .infinity, // Adjust the fit to your preference (cover, contain, etc.)
                                  loadingBuilder: (BuildContext context,
                                      Widget child,
                                      ImageChunkEvent? loadingProgress) {
                                    if (loadingProgress == null) {
                                      return child;
                                    } else {
                                      return Center(
                                        child: CircularProgressIndicator(
                                          value: loadingProgress
                                                      .expectedTotalBytes !=
                                                  null
                                              ? loadingProgress
                                                      .cumulativeBytesLoaded /
                                                  (loadingProgress
                                                          .expectedTotalBytes ??
                                                      1)
                                              : null,
                                        ),
                                      );
                                    }
                                  },
                                ),
                              ),
                            ),
                            Container(
                              height: 200.0,
                              decoration: const BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10.0),
                                ),
                              ),
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      bottom:
                                          10.0), // Add 10px margin at the bottom
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      // Circle Avatar
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          child: Container(
                                            width: 200.0,
                                            height: 40.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      // Calendar Icon
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          child: Container(
                                            width: 100.0,
                                            height: 40.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
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
                    const SizedBox(height: 16.0),
                    GestureDetector(
                      // Wrap the container with GestureDetector to handle tap events
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VideoApp(),
                          ),
                        );
                      },
                      child: Container(
                        height: 600.0,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Container(
                              height: 50.0,
                              decoration: const BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  topRight: Radius.circular(10.0),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // Circle Avatar
                                  const Padding(
                                    padding: EdgeInsets.only(left: 10.0),
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 20.0,
                                    ),
                                  ),

                                  // Text
                                  const Text(
                                    'Rotaract Club of Nairobi Central',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),

                                  // Share Icon
                                  IconButton(
                                    icon: const Icon(Icons.share,
                                        color: Colors.white),
                                    onPressed: () {
                                      // Handle share button pressed
                                    },
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Container(
                                color: Colors.grey,
                                child: Image.network(
                                  'https://firebasestorage.googleapis.com/v0/b/rotary-66829.appspot.com/o/images%2Fsignal-2023-07-03-091733_002.jpg?alt=media&token=710aba87-1229-4d2f-95dc-af7f4cadeb55', // Replace with your actual image URL
                                  fit: BoxFit.fill, // Set the fit to fill
                                  width: double
                                      .infinity, // Adjust the fit to your preference (cover, contain, etc.)
                                  loadingBuilder: (BuildContext context,
                                      Widget child,
                                      ImageChunkEvent? loadingProgress) {
                                    if (loadingProgress == null) {
                                      return child;
                                    } else {
                                      return Center(
                                        child: CircularProgressIndicator(
                                          value: loadingProgress
                                                      .expectedTotalBytes !=
                                                  null
                                              ? loadingProgress
                                                      .cumulativeBytesLoaded /
                                                  (loadingProgress
                                                          .expectedTotalBytes ??
                                                      1)
                                              : null,
                                        ),
                                      );
                                    }
                                  },
                                ),
                              ),
                            ),
                            Container(
                              height: 200.0,
                              decoration: const BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10.0),
                                ),
                              ),
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      bottom:
                                          10.0), // Add 10px margin at the bottom
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      // Circle Avatar
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          child: Container(
                                            width: 200.0,
                                            height: 40.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      // Calendar Icon
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          child: Container(
                                            width: 100.0,
                                            height: 40.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    GestureDetector(
                      // Wrap the container with GestureDetector to handle tap events
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ContentPageThree(),
                          ),
                        );
                      },
                      child: Container(
                        height: 600.0,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Container(
                              height: 50.0,
                              decoration: const BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  topRight: Radius.circular(10.0),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // Circle Avatar
                                  const Padding(
                                    padding: EdgeInsets.only(left: 10.0),
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 20.0,
                                    ),
                                  ),

                                  // Text
                                  const Text(
                                    'Rotaract Club of Nairobi Central',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),

                                  // Share Icon
                                  IconButton(
                                    icon: const Icon(Icons.share,
                                        color: Colors.white),
                                    onPressed: () {
                                      // Handle share button pressed
                                    },
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Container(
                                color: Colors.grey,
                                child: Image.network(
                                  'https://firebasestorage.googleapis.com/v0/b/rotary-66829.appspot.com/o/images%2Fsignal-2023-07-03-091733_002.jpg?alt=media&token=710aba87-1229-4d2f-95dc-af7f4cadeb55', // Replace with your actual image URL
                                  fit: BoxFit.fill, // Set the fit to fill
                                  width: double
                                      .infinity, // Adjust the fit to your preference (cover, contain, etc.)
                                  loadingBuilder: (BuildContext context,
                                      Widget child,
                                      ImageChunkEvent? loadingProgress) {
                                    if (loadingProgress == null) {
                                      return child;
                                    } else {
                                      return Center(
                                        child: CircularProgressIndicator(
                                          value: loadingProgress
                                                      .expectedTotalBytes !=
                                                  null
                                              ? loadingProgress
                                                      .cumulativeBytesLoaded /
                                                  (loadingProgress
                                                          .expectedTotalBytes ??
                                                      1)
                                              : null,
                                        ),
                                      );
                                    }
                                  },
                                ),
                              ),
                            ),
                            Container(
                              height: 200.0,
                              decoration: const BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10.0),
                                ),
                              ),
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      bottom:
                                          10.0), // Add 10px margin at the bottom
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      // Circle Avatar
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          child: Container(
                                            width: 200.0,
                                            height: 40.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      // Calendar Icon
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          child: Container(
                                            width: 100.0,
                                            height: 40.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


/*import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(LibraryPage());
}

class LibraryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Data Display Example'),
        ),
        body: DataDisplay(),
      ),
    );
  }
}

class DataDisplay extends StatefulWidget {
  @override
  _DataDisplayState createState() => _DataDisplayState();
}

class _DataDisplayState extends State<DataDisplay> {
  Future<Map<String, dynamic>> fetchData() async {
    const token =
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY1MDlkMWU2ODYxMTA1MTY0NjQyZGU2MiIsImlhdCI6MTY5NTE0MjUzMiwiZXhwIjoxNzI2Njc4NTMyfQ.HTyeHtjRwhJ95mz_EPP66nLd4dvEW1TYdZiG-DPEWUk'; // Replace with your actual token
    final url = Uri.parse('http://192.168.0.103:8888/api/client/list');

    final response = await http.get(
      url,
      headers: {
        'Authorization': 'Bearer $token',
        // Add other headers if needed
      },
    );

    if (response.statusCode == 200) {
      final responseData = json.decode(response.body);
      print('Raw API Response: $responseData');

      return responseData;
    } else {
      throw Exception('Failed to load data from the API');
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Map<String, dynamic>>(
      future: fetchData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasError) {
          return Center(
            child: Text('Error: ${snapshot.error}'),
          );
        } else {
          final company = snapshot.data?['company'];
          final managerName = snapshot.data?['managerName'];
          final message = snapshot.data?['message'];

          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Company: ${company ?? "Data not available"}'),
                Text('Manager Name: ${managerName ?? "Data not available"}'),
                Text('Message: ${message ?? "Data not available"}'),
              ],
            ),
          );
        }
      },
    );
  }
}
*/