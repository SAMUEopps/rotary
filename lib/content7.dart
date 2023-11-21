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
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Container(
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            child: const Row(
              children: [
                Expanded(
                  child: Text(
                    'Eiusmod incitfdunt Profile',
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
                  height: 300.0,
                  color: Colors.white,
                  child: Container(
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 20.0),
                const Text(
                  'Eiusmod incitfdunt',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8.0),
                const Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed aliquet neque sed bibendum viverra.',
                  style: TextStyle(fontSize: 16.0),
                ),
                const SizedBox(height: 8.0),
                const SizedBox(height: 12.0),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 40.0,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(width: 8.0),
                  ],
                ),
                const SizedBox(height: 8.0),
                const SizedBox(height: 12.0),
                FractionallySizedBox(
                  widthFactor: 0.8,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.facebook,
                        size: MediaQuery.of(context).size.width * 0.08,
                        color: Colors.blue,
                      ),
                      Icon(
                        Icons.facebook,
                        size: MediaQuery.of(context).size.width * 0.08,
                        color: Colors.pink,
                      ),
                      Icon(
                        Icons.facebook,
                        size: MediaQuery.of(context).size.width * 0.08,
                        color: Colors.blue,
                      ),
                      Icon(
                        Icons.facebook,
                        size: MediaQuery.of(context).size.width * 0.08,
                        color: Colors.red,
                      ),
                      Icon(
                        Icons.facebook,
                        size: MediaQuery.of(context).size.width * 0.08,
                        color: Colors.blue,
                      ),
                      Icon(
                        Icons.facebook,
                        size: MediaQuery.of(context).size.width * 0.08,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 12.0),
                ElevatedButton(
                  onPressed: () {
                    // Add functionality for the submit button
                  },
                  child: const Text('CONTACT'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
