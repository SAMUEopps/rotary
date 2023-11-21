import 'package:flutter/material.dart';

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
      body: Container(
        color: Colors.blue,
        child: Center(
          child: FractionallySizedBox(
            widthFactor: 0.8,
            heightFactor: 0.7,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              elevation: 2.0,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      'Mambo Yana Badilika',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8.0),
                    const Text(
                      'Rotaract Club Of Muthaiga',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const Divider(
                      color: Colors.black,
                      thickness: 1.0,
                      height: 24.0,
                    ),
                    CircleAvatar(
                      radius: 40.0,
                      backgroundColor: Colors.grey[300],
                      backgroundImage: const AssetImage(
                          'assets/images/avatar_placeholder.png'),
                    ),
                    const SizedBox(height: 8.0),
                    const Text(
                      'Joshua Kihara Kimani',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8.0),
                    const Text(
                      'Rotaractor',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const Divider(
                      color: Colors.black,
                      thickness: 1.0,
                      height: 24.0,
                    ),
                    const Text(
                      '2000',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8.0),
                    const Divider(
                      color: Colors.black,
                      thickness: 1.0,
                      height: 24.0,
                    ),
                    const Placeholder(
                      fallbackHeight: 100.0,
                      fallbackWidth: 100.0,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
