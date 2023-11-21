import 'package:flutter/material.dart';
import 'signup_five.dart';

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
      home: SignUpFourPage(),
    );
  }
}

class SignUpFourPage extends StatelessWidget {
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
              'assets/images/image4.jpg',
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
                            'Code Verification',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Expanded(child: Divider(color: Colors.black)),
                      ],
                    ),
                    const Text(
                      'Please Enter The 4 Digit Code Sent To jkimani@jkwain.com',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text(
                        'Enter Code',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          flex: 1,
                          child: TextField(
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20.0),
                            keyboardType: TextInputType.number,
                            maxLength: 1,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey,
                              counterText: '',
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10.0),
                        Expanded(
                          flex: 1,
                          child: TextField(
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20.0),
                            keyboardType: TextInputType.number,
                            maxLength: 1,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey,
                              counterText: '',
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10.0),
                        Expanded(
                          flex: 1,
                          child: TextField(
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20.0),
                            keyboardType: TextInputType.number,
                            maxLength: 1,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey,
                              counterText: '',
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10.0),
                        Expanded(
                          flex: 1,
                          child: TextField(
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20.0),
                            keyboardType: TextInputType.number,
                            maxLength: 1,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey,
                              counterText: '',
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      'Resend Code',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpFivePage(),
                          ),
                        );
                      },
                      child: const Text('VERIFY'),
                    ),
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
