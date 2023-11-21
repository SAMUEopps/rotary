// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Future<void> registerUser() async {
    const url = 'http://192.168.167.1:4000/users/register';
    // Replace with your Node.js server URL and port

    try {
      final response = await http.post(
        Uri.parse(url),
        body: json.encode({
          'username': usernameController.text,
          'password': passwordController.text,
        }),
        headers: {
          'Content-Type': 'application/json',
        },
      );
      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        // Handle the JSON data here, e.g., show a success message or navigate to a new page
        print(jsonData); // For example, print the response data to the console

        // Show a success dialog or snackbar
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text('Registration Successful'),
              content: const Text('User registration successful!'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('OK'),
                ),
              ],
            );
          },
        );
      } else {
        print('Request failed with status: ${response.statusCode}');
        // Handle error cases, e.g., show an error dialog or snackbar
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text('Registration Failed'),
              content: const Text('Failed to register user. Please try again.'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('OK'),
                ),
              ],
            );
          },
        );
      }
    } catch (e) {
      print('Error: $e');
      // Handle network or server-related errors, e.g., show an error dialog or snackbar
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Error'),
            content: const Text(
                'An error occurred. Please check your internet connection and try again.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registration Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: usernameController,
              decoration: const InputDecoration(labelText: 'Username'),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                // Call the registerUser function when the button is pressed
                registerUser();
              },
              child: const Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: RegistrationPage(),
  ));
}
