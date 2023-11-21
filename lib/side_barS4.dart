import 'package:flutter/material.dart';

void main() => runApp(const SideBarSFour());

class SideBarSFour extends StatelessWidget {
  const SideBarSFour({Key? key}) : super(key: key);

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
                    'Create Post',
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
                const SizedBox(height: 20.0),
                Container(
                  height: 200.0,
                  color: Colors.white,
                  child: Container(
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 16.0),
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'First Name',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 12.0),
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Last Name',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 12.0),
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Email Address',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 12.0),
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Subject',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 12.0),
                const TextField(
                  maxLines: 3,
                  decoration: InputDecoration(
                    labelText: 'Message',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 12.0),
                const Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed aliquet neque sed bibendum viverra.',
                  style: TextStyle(fontSize: 16.0),
                ),
                const SizedBox(height: 12.0),
                ElevatedButton(
                  onPressed: () {
                    // Add functionality for the submit button
                  },
                  child: const Text('Submit'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
