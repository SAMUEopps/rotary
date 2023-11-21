import 'package:flutter/material.dart';
import 'side_bar13.dart';

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
      home: SideBarTwelve(),
    );
  }
}

class SideBarTwelve extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey, // Add the GlobalKey to the Scaffold
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Container(
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          child: const Row(
            children: [
              Expanded(
                child: Text(
                  'Donations',
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.white,
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
              child: Row(
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
                    child: Container(
                      height: 150.0,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: const Center(
                        child: Text(
                          'Box 1',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 4.0),
                  Expanded(
                    flex: 3,
                    child: Container(
                      height: 150.0,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: const Center(
                        child: Text(
                          'Box 2',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
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
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Container(
                    height: 300.0,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16.0), // Add spacing between boxes
                  Container(
                    child: const Center(
                      child: Text(
                        'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using , making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0),

                  // Buttons aligned vertically
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Add functionality for the first button
                        },
                        child: Text('DONATE NOW'),
                      ),
                      SizedBox(height: 12.0), // Add spacing between buttons
                      ElevatedButton(
                        onPressed: () {
                          // Add functionality for the second button
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    SideBarThirteen()), // Replace with the desired page
                          );
                        },
                        child: Text('DONATE TO A SPECIFIC CLUB'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
