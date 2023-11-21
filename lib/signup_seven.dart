import 'package:flutter/material.dart';
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
        '/': (context) => SignUpSevenPage(),
        '/signup_six': (context) => SignUpSixPage(),
      },
    );
  }
}

class SignUpSevenPage extends StatelessWidget {
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
              'assets/images/image7.jpg', // Replace with your image path
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: FractionallySizedBox(
              widthFactor: 1.0,
              heightFactor: 0.75,
              child: Container(
                padding: const EdgeInsets.all(16.0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                child: ListView(
                  children: [
                    _buildImageContainer('assets/images/infopic1.jpg',
                        'Interact is for young people aged 12-18', true),
                    _buildImageContainer('assets/images/infopic2.jpg',
                        'Rotaract is for young adults aged 18-30', false),
                    _buildImageContainer('assets/images/infopic3.jpg',
                        'Rotary is open to adults of all ages', false),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 16.0,
            right: 16.0,
            bottom: 24.0,
            child: ElevatedButton(
              onPressed: () {
                // Handle button press
                Navigator.pop(context);
                Navigator.pushNamed(context, '/signup_six');
              },
              child: const Text('UNDERSTOOD'),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildImageContainer(
      String imagePath, String infoText, bool isFirstBox) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        if (isFirstBox)
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
              ),
              const Text(
                'Info',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  decorationThickness: 1.0,
                  decorationColor: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
              ),
            ],
          ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            infoText,
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 100.0,
          width: 80.0,
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
