import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Onboarding Page'),
      ),
      body: Center(
        child: Text('Welcome to the Onboarding Page!'),
      ),
    );
  }
}
