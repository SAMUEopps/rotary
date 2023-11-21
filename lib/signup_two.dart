import 'dart:convert';
import 'package:flutter/material.dart';
import 'bottom_navbar.dart';
import 'signup_three.dart';
import 'package:http/http.dart' as http;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign Up Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SignUpTwoPage(),
    );
  }
}

class SignUpTwoPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  SignUpTwoPage({super.key});

  Future<bool> _performLogin(BuildContext context) async {
    final email = _emailController.text;
    final password = _passwordController.text;

    if (email.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter both email and password.')),
      );
      return false;
    }

    //final url = Uri.parse('http://192.168.0.105:3000/api/login');
    final url = Uri.parse('https://rotaryintern.onrender.com/api/login');
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: json.encode({
        'email': email,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      return true;
    } else {
      print('API call failed with status code: ${response.statusCode}');
      print('Error message: ${response.body}');
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.35,
            width: double.infinity,
            color: Colors.white,
            child: Image.asset(
              'assets/images/image2.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.75,
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        //const Spacer(),
                        const Row(
                          children: [
                            Expanded(child: Divider(color: Colors.black)),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                'Login',
                                style: TextStyle(
                                  fontSize: 36.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Expanded(child: Divider(color: Colors.black)),
                          ],
                        ),
                        //const Spacer(),
                        const Text(
                          'Email',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            color: Colors.black,
                          ),
                        ),
                        //const SizedBox(height: 8.0),
                        TextFormField(
                          controller: _emailController,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                              labelText: '',
                              labelStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                                color: Colors.grey, // Set label color to grey
                              ),
                              filled:
                                  true, // Set to true to enable background color
                              fillColor:
                                  Colors.grey // Set background color to grey
                              ),
                        ),
                        //const Spacer(),
                        const Text(
                          'Password',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            color: Colors.black,
                          ),
                        ),
                        //const SizedBox(height: 8.0),
                        TextFormField(
                          controller: _passwordController,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                              labelText: '',
                              labelStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                                color: Colors.grey, // Set label color to grey
                              ),
                              filled:
                                  true, // Set to true to enable background color
                              fillColor:
                                  Colors.grey // Set background color to grey
                              ),
                        ),
                        const SizedBox(height: 8.0),
                        Row(
                          children: [
                            Checkbox(
                              value: true,
                              onChanged: (value) {
                                // Handle the onChanged event
                              },
                            ),
                            const Text(
                              'Remember me',
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.grey,
                              ),
                            ),
                            const Spacer(),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignUpThreePage(),
                                  ),
                                );
                              },
                              child: const Text(
                                'Forgot password?',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.grey,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ],
                        ),
                        //const Spacer(),
                        ElevatedButton(
                          onPressed: () async {
                            bool loginSuccess = await _performLogin(context);
                            if (loginSuccess) {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const AppMainScreen(),
                                ),
                              );
                            } else {
                              // Add handling for failed login if needed
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xFF354275),
                            onPrimary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  30), // Adjust the radius as needed
                            ),
                            minimumSize: const Size(
                                double.infinity, 55), // Set the minimum size
                          ),
                          child: const Text(
                            'LOGIN',
                            style: TextStyle(
                              fontSize: 36, // Set the font size to 36 pixels
                              fontWeight: FontWeight
                                  .bold, // Set the font weight to bold
                            ),
                          ),
                        ),
                        //const SizedBox(height: 16.0),
                        const Row(
                          children: [
                            Expanded(child: Divider(color: Colors.grey)),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                'or login with',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.grey,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Expanded(child: Divider(color: Colors.grey)),
                          ],
                        ),
                        //const SizedBox(height: 40.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            DecoratedBox(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5.0),
                                border: Border.all(color: Colors.grey),
                              ),
                              child: Container(
                                height: 50.0, // Adjust the height as needed
                                width: 100.0, // Adjust the width as needed
                              ),
                            ),
                            DecoratedBox(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5.0),
                                border: Border.all(color: Colors.grey),
                              ),
                              child: Container(
                                height: 50.0, // Adjust the height as needed
                                width: 100.0, // Adjust the width as needed
                              ),
                            ),
                            DecoratedBox(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5.0),
                                border: Border.all(color: Colors.grey),
                              ),
                              child: Container(
                                height: 50.0, // Adjust the height as needed
                                width: 100.0, // Adjust the width as needed
                              ),
                            ),
                          ],
                        ),
                        //const SizedBox(height: 40.0),
                        const Text(
                          "Don't have an account? Sign up",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.grey,
                          ),
                        ),
                        //const SizedBox(height: 40.0),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
