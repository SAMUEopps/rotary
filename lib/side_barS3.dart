import 'package:flutter/material.dart';
import 'side_barS4.dart';

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
      home: SideBarSThree(),
    );
  }
}

class SideBarSThree extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey, // Add the GlobalKey to the Scaffold
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Container(
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          child: const Center(
            child: FittedBox(
              fit: BoxFit.fitWidth,
              child: Text(
                'Tours & Adventures',
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(children: [
                GestureDetector(
                  // Wrap the container with GestureDetector to handle tap events
                  onTap: () {},
                  child: Container(
                    height: 400.0,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Container(
                          height: 50.0,
                          decoration: const BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              'https://images.pexels.com/photos/17541726/pexels-photo-17541726/free-photo-of-jeep.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2', // Replace with your actual image URL
                              fit: BoxFit
                                  .cover, // Adjust the fit to your preference (cover, contain, etc.)
                              loadingBuilder: (BuildContext context,
                                  Widget child,
                                  ImageChunkEvent? loadingProgress) {
                                if (loadingProgress == null) {
                                  return child;
                                } else {
                                  return Center(
                                    child: CircularProgressIndicator(
                                      value:
                                          loadingProgress.expectedTotalBytes !=
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
                          height: 50.0,
                          decoration: const BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Rectangular Box
                              Container(
                                height: 50.0,
                                decoration: const BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20.0),
                                    bottomRight: Radius.circular(20.0),
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 50.0, // Adjust the width as needed
                                      color:
                                          Colors.white, // Rectangular box color
                                      // Add any child widget inside the rectangular box as needed
                                    ),
                                    const Icon(
                                      Icons.calendar_today, // Calendar icon
                                      color: Colors.white, // Icon color
                                      size: 30.0, // Adjust the size as needed
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16.0), // Add spacing between boxes
              ]),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add functionality for the floating action button
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    const SideBarSFour()), // Replace EventPage with the actual class name for the event page
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
