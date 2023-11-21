import 'package:flutter/material.dart';
import 'onboarding_page.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    // Add any initialization logic here, such as loading assets or data
    // You can use a Future.delayed to simulate a loading process
    Future.delayed(Duration(seconds: 2), () {
      // Navigate to the onboarding page after the splash screen
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => OnboardingPage(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Splash Screen'),
      ),
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
