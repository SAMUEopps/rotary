import 'package:flutter/material.dart';

import 'publications_page3.dart';
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
      home: const PublicationsPageOne(),
    );
  }
}

class PublicationsPageOne extends StatelessWidget {
  const PublicationsPageOne({super.key});

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
                'DG Times',
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
                                  PublicationPageThree()), // Replace with the desired page
                        );
                      },
                      child: Container(
                        height: 200.0,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Container(
                              height: 35.0,
                              decoration: const BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  topRight: Radius.circular(10.0),
                                ),
                              ),
                              child: const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // Circle Avatar
                                  Padding(
                                    padding: EdgeInsets.only(left: 5.0),
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 10.0,
                                    ),
                                  ),

                                  // Centered Text
                                  Expanded(
                                    child: Center(
                                      child: Text(
                                        'Rotaract District 9212 Digital',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 6.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                                child: Container(
                              color: Colors.grey,
                            )),
                            Container(
                              height: 60.0,
                              decoration: const BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10.0),
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
                    child: GestureDetector(
                      onTap: () {
                        /*Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  SideBarEleven()), // Replace with the desired page
                        );*/
                      },
                      child: Container(
                        height: 35.0,
                        decoration: const BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                          ),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Circle Avatar
                            Padding(
                              padding: EdgeInsets.only(left: 2.0),
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 10.0,
                              ),
                            ),

                            // Centered Text
                            Expanded(
                              child: Center(
                                child: Text(
                                  'Rotaract District 9212 Digital',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 6.0,
                                    fontWeight: FontWeight.bold,
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
              const SizedBox(height: 20.0),
              Container(
                height: 400.0,
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
                            icon: const Icon(Icons.share, color: Colors.white),
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
                          loadingBuilder: (BuildContext context, Widget child,
                              ImageChunkEvent? loadingProgress) {
                            if (loadingProgress == null) {
                              return child;
                            } else {
                              return Center(
                                child: CircularProgressIndicator(
                                  value: loadingProgress.expectedTotalBytes !=
                                          null
                                      ? loadingProgress.cumulativeBytesLoaded /
                                          (loadingProgress.expectedTotalBytes ??
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
                      height: 60.0,
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Circle Avatar
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                  10.0), // Adjust the radius for your desired rectangle shape
                              child: Container(
                                width:
                                    200.0, // Adjust the width to create a rectangle
                                height:
                                    40.0, // Adjust the height to create a rectangle
                                color: Colors.white,
                              ),
                            ),
                          ),
                          // Calender Icon
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                  10.0), // Adjust the radius for your desired rectangle shape
                              child: Container(
                                width:
                                    100.0, // Adjust the width to create a rectangle
                                height:
                                    40.0, // Adjust the height to create a rectangle
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ), // Space below the two rows
            ],
          ),
        ),
      ),
    );
  }
}
