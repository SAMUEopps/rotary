import 'package:flutter/material.dart';
import 'main_page2.dart';
import 'main_page3.dart';

void main() => runApp(const MainPageOne());

class MainPageOne extends StatelessWidget {
  const MainPageOne({Key? key}) : super(key: key);

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
                    backgroundColor:
                        Colors.green, // Customize the color if needed
                    radius: 14.0,
                    child: IconButton(
                      icon: const Icon(Icons.menu,
                          color: Colors.white, size: 16.0),
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
                    const SizedBox(height: 20.0),
                    SizedBox(
                      height: 200.0,
                      width: double.infinity,
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
                        'Welcome to Rotary District 9212',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    const Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Rotary International',
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
                    const SizedBox(height: 20.0),
                    const Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Our Mission',
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
                    const SizedBox(height: 20.0),
                    const Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Our Vision',
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
                    const SizedBox(height: 20.0),
                    const Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Our Country Members',
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
                    const SizedBox(height: 20.0),
                    const Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Our Leadership',
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
                    const SizedBox(height: 20.0),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Our Country Members',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in velit vitae turpis posuere volutpat a in tortor.',
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    const SizedBox(height: 20.0),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'The Team',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in velit vitae turpis posuere volutpat a in tortor.',
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    const SizedBox(height: 20.0),
                    SizedBox(
                      height: 200.0,
                      width: double.infinity,
                      child: Container(
                        color: Colors.grey,
                      ),
                    ),
                  ]),
            ))));
  }
}
