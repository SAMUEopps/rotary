import 'package:flutter/material.dart';
import 'package:rotary/home_page.dart';
import 'side_bar2.dart';

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
      home: const SideBarOne(),
    );
  }
}

class SideBarOne extends StatelessWidget {
  const SideBarOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> steps = [
      'Attend a minimum of 3 club meetings organized by the Rotary/Rotaract/Interact Club.',
      'Attend a minimum of 3 club meetings organized by the Rotary/Rotaract/Interact Club.',
      'Attend a minimum of 3 club meetings organized by the Rotary/Rotaract/Interact Club.',
      'Attend a minimum of 3 club meetings organized by the Rotary/Rotaract/Interact Club.',
      'Attend a minimum of 3 club meetings organized by the Rotary/Rotaract/Interact Club.',
      'Attend a minimum of 3 club meetings organized by the Rotary/Rotaract/Interact Club.',
      'Attend a minimum of 3 club meetings organized by the Rotary/Rotaract/Interact Club.',
      // Add more steps here
    ];

    return MaterialApp(
      title: 'Sign Up Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Container(
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            child: const Row(
              children: [
                Expanded(
                  child: Text(
                    'How To Join Rotary Organisation',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          leading: Container(
            padding: const EdgeInsets.only(left: 14.0),
            child: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {
                // Add functionality for the arrow back icon
                /*Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (context) =>
                        HomePage(), // Replace with your homepage widget
                  ),
                  (route) => false,
                );*/
                Navigator.of(context).pop();
              },
            ),
          ),
          actions: [
            Container(
              padding: const EdgeInsets.only(right: 14.0),
              child: CircleAvatar(
                backgroundColor: Colors.green,
                radius: 14.0,
                child: IconButton(
                  icon: const Icon(Icons.menu, color: Colors.white, size: 16.0),
                  onPressed: () {
                    // Add functionality for the small green circle icon
                  },
                ),
              ),
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Text(
                'To Become A Member of A Club The Following Steps Are Typically Involved',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            for (int i = 0; i < steps.length; i++)
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      '(${i + 1})',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 18.0,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      steps[i],
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ],
              ),
            ElevatedButton(
              onPressed: () {
                // Add functionality for the Join button
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SideBarTwo()));
              },
              child: const Text('Join'),
            ),
          ],
        ),
      ),
    );
  }
}
