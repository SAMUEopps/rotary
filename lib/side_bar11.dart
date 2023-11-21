import 'package:flutter/material.dart';
// Import the page you want to navigate to

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
      home: SideBarEleven(),
    );
  }
}

class SideBarEleven extends StatelessWidget {
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
                'T-Shirts',
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
              const SizedBox(height: 20.0), // Breathing space
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  SideBarEleven()), // Replace with the desired page
                        );
                      },
                      child: Container(
                        height: 200.0,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Container(
                              height: 25.0,
                              decoration: const BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  topRight: Radius.circular(10.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                color: Colors.grey,
                              ),
                            ),
                            Container(
                              height: 25.0,
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
                    ),
                  ),
                  const SizedBox(width: 20.0),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  SideBarEleven()), // Replace with the desired page
                        );
                      },
                      child: Container(
                        height: 200.0,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Container(
                              height: 25.0,
                              decoration: const BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  topRight: Radius.circular(10.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                color: Colors.grey,
                              ),
                            ),
                            Container(
                              height: 25.0,
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
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.0), // Space below the two rows
            ],
          ),
        ),
      ),
    );
  }
}
