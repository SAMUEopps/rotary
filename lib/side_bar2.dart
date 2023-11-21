import 'package:flutter/material.dart';

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
      home:
          const SideBarTwo(), // Replace with the home screen widget you want to show initially
    );
  }
}

class SideBarTwo extends StatelessWidget {
  const SideBarTwo({Key? key}) : super(key: key);

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
                    'Join Rotary',
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
                Navigator.of(context).pop();
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                  'Thank you for your interest in joining our global network of dedicated volunteers. With your help, we can make an even greater difference in communities around the world.\n\nBy completing the information below, you will be taking the first step to becoming a member. We will use this information to connect you with a club that best matches your interests.',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 14.0,
                    //fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    const SizedBox(height: 20.0), // Add spacing between widgets
                    _buildTextField('First Name'),
                    _buildTextField('Last Name'),
                    _buildTextField('Email Address'),
                    _buildTextField('Profession'),
                    _buildTextField('Age Range'),
                    _buildTextField('Gender'),
                    _buildTextField('Phone Number'),
                    _buildTextField('Country Code'),
                  ],
                ),
              ),
              // Add other widgets below if needed
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: TextField(
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
