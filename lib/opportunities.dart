import 'package:flutter/material.dart';

import 'content8.dart';
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
      home: OpportunitiesPage(),
    );
  }
}

class OpportunitiesPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  OpportunitiesPage({super.key});
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
                                  builder: (context) => SideBarFour()),
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
                                    'https://firebasestorage.googleapis.com/v0/b/rotary-66829.appspot.com/o/images%2Faman-upadhyay-JAgokV30kGk-unsplash.jpg?alt=media&token=adb16588-629c-49e3-ae67-ed1e615e685a',
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
              const SizedBox(height: 16.0), // Add spacing between boxes
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const ContentEightPage()), // Replace ContentEightPage with your actual page
                  );
                },
                child: Container(
                  height: 150.0,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/rotary-66829.appspot.com/o/images%2Fhow-to-run-a-business.png?alt=media&token=94f1927c-31f9-4dea-a36f-a2c255bf407a',
                          fit: BoxFit.cover,
                        ),
                        Container(
                          color: Colors.black.withOpacity(0.5),
                          child: const Center(
                            child: Text(
                              'Business Listing',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )

              // Space below the two rows
            ],
          ),
        ),
      ),
    );
  }
}
