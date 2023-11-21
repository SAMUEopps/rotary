import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:rotary/screens/login_with_facebook.dart';
import 'package:rotary/screens/login_with_google.dart';
import 'package:rotary/screens/login_with_phone.dart';
import 'package:rotary/screens/login_with_twitter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Select Option"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const LoginWithGoogle()));
                },
                child: const Text("Login with google")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const LoginWithFacebook()));
                },
                child: const Text("Login with facebook")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const LoginWithPhone()));
                },
                child: const Text("Login with Phone")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const LoginWithTwitter()));
                },
                child: const Text("Login with Twitter"))
          ],
        ),
      ),
    );
  }
}
