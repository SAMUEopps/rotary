import 'package:flutter/material.dart';
import 'signup_two.dart';
import 'signup_six.dart';

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
      initialRoute: '/',
      routes: {
        '/': (context) => SignUpPage(),
        '/signup_six': (context) => SignUpSixPage(),
      },
    );
  }
}

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.blue,
            child: Image.asset(
              'assets/images/image1.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: FractionallySizedBox(
              widthFactor: 1.0,
              heightFactor: 0.5,
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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Row(
                      children: [
                        Expanded(child: Divider(color: Colors.black)),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            'Welcome!',
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
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpTwoPage(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xFF354275),
                        // Increase the height of the button
                        minimumSize: const Size(
                            double.infinity, 55), // Set the height to 50 pixels

                        // Add border radius on all four sides
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              30), // Set the border radius to 8 pixels
                        ),
                      ),
                      child: const Text(
                        'LOGIN',
                        style: TextStyle(
                          fontSize: 34, // Set the font size to 36 pixels
                          fontWeight:
                              FontWeight.bold, // Set the font weight to bold
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpSixPage(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xFF354275),
                        // Increase the height of the button
                        minimumSize: const Size(
                            double.infinity, 55), // Set the height to 50 pixels

                        // Add border radius on all four sides
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              30), // Set the border radius to 8 pixels
                        ),
                      ),
                      child: const Text(
                        'SIGN UP',
                        style: TextStyle(
                          fontSize: 34, // Set the font size to 36 pixels
                          fontWeight:
                              FontWeight.bold, // Set the font weight to bold
                        ),
                      ),
                    ),
                    /* ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpSixPage(),
                          ),
                        );
                      },
                      child: const Text('SIGN UP'),
                    ),*/
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
