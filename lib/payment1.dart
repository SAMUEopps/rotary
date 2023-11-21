import 'package:flutter/material.dart';

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
      home: SignUpPage(),
    );
  }
}

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Container(
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          child: const Row(
            children: [
              Expanded(
                child: TextField(
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    hintText: 'Search',
                    hintStyle: TextStyle(color: Colors.black),
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search, color: Colors.black),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
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
              },
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 300.0,
                  color: Colors.white,
                  child: Container(
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 20.0),
                const Text(
                  'Payment Details',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                const SizedBox(height: 10.0),
                Container(
                  height: 1.0,
                  color: Colors.black,
                ),
                const SizedBox(height: 10.0),
                const Text(
                  'Project Name',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(height: 5.0),
                const Text(
                  'Hardware & E-waste Recycling',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(height: 20.0),
                const Text(
                  'Project Date',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(height: 5.0),
                const Text(
                  '29 June 2023 - 30 July 2024',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(height: 10.0),
                Container(
                  height: 1.0,
                  color: Colors.black,
                ),
                const SizedBox(height: 10.0),
                const Text(
                  'Level',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(height: 5.0),
                const Text(
                  'Rotaractor',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(height: 20.0),
                const Text(
                  'Name',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(height: 5.0),
                const Text(
                  'Joshua Kihara Kimani',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(height: 10.0),
                Container(
                  height: 1.0,
                  color: Colors.black,
                ),
                const SizedBox(height: 10.0),
                const Text(
                  'Donation Amount',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(height: 5.0),
                const Text(
                  'KES 2000',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(height: 10.0),
                Container(
                  height: 1.0,
                  color: Colors.black,
                ),
                const SizedBox(height: 10.0),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.add),
                  ],
                ),
                const SizedBox(height: 10.0),
                Container(
                  height: 1.0,
                  color: Colors.black,
                ),
                const SizedBox(height: 10.0),
                const Text(
                  'Payment Methods',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Add functionality for M-Pesa button
                      },
                      child: const Text('M-Pesa'),
                    ),
                    const SizedBox(width: 10.0),
                    ElevatedButton(
                      onPressed: () {
                        // Add functionality for Visa button
                      },
                      child: const Text('Visa'),
                    ),
                  ],
                ),
                const SizedBox(height: 10.0),
                Container(
                  height: 1.0,
                  color: Colors.black,
                ),
                const SizedBox(height: 10.0),
                const Text(
                  'Add payment method to your Rotary Account',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(height: 5.0),
                const Text(
                  'Add credit or debit card',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(height: 10.0),
                Container(
                  height: 1.0,
                  color: Colors.black,
                ),
                const SizedBox(height: 10.0),
                ElevatedButton(
                  onPressed: () {
                    // Add functionality for PAY NOW button
                  },
                  child: const Text('DONATE NOW'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
