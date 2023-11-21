import 'package:flutter/material.dart';

import 'content9.dart';

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
      home: const ContentEightPage(),
    );
  }
}

class ContentEightPage extends StatelessWidget {
  const ContentEightPage({Key? key}) : super(key: key);

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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          // Functionality to navigate to the "About" page here.
                          /*/ For example:
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MainPageOne()),
                          );*/
                        },
                        child: Container(
                          height: 30.0,
                          color: Colors.grey,
                          child: const Center(
                            child: Text(
                              'About',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          // Functionality to navigate to the "About" page here.
                          /*/ For example:
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MainPageTwo()),
                          );*/
                        },
                        child: Container(
                          height: 30.0,
                          color: Colors.grey,
                          child: const Center(
                            child: Text(
                              'Clubs',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          // Functionality to navigate to the "About" page here.
                          /*/ For example:
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MainPageThree()),
                          );*/
                        },
                        child: Container(
                          height: 30.0,
                          color: Colors.grey,
                          child: const Center(
                            child: Text(
                              'Contacts',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ContentNinePage()),
                    );
                  },
                  child: Container(
                    height: 120.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Stack(
                        children: [
                          Container(
                            color: Colors.grey,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(
                                        5.0), // Border radius for the inner box
                                  ),
                                  height: 130.0,
                                  width: 100.0,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            right: 0,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(
                                      5.0), // Border radius for the inner box
                                ),
                                height: 45.0,
                                width: 45.0,
                              ),
                            ),
                          ),
                          const Positioned(
                            top: 0,
                            left: 120,
                            right: 0,
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 0.0,
                                        bottom: 5.0,
                                        left: 0.0,
                                        right: 0.0),
                                    child: Text(
                                      "Duis Textiles",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0,
                                          color: Colors.white),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 0.0,
                                        bottom: 15.0,
                                        left: 0.0,
                                        right: 0.0),
                                    child: Text(
                                      "Textile Manufacturing",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16.0,
                                          color: Colors.white),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 10.0,
                                        bottom: 0.0,
                                        left: 0.0,
                                        right: 0.0),
                                    child: Text(
                                      "Textile Made | Textiles",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16.0,
                                          color: Colors.white),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 0.0,
                                        bottom: 10.0,
                                        left: 0.0,
                                        right: 30.0),
                                    child: Divider(
                                      color: Colors.white,
                                      thickness: 1.5,
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
                  // const SizedBox(height: 20.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
