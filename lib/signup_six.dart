import 'package:flutter/material.dart';
import 'signup_eight.dart';
import 'signup_seven.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key})
      : super(key: key); // Add 'Key?' for the 'key' parameter

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign Up Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SignUpSixPage(),
        '/signup_eight': (context) => SignUpPage(
              selectedUserType: '',
              userType: '',
            ),
      },
    );
  }
}

// The rest of your code remains the same...

class SignUpSixPage extends StatefulWidget {
  @override
  _SignUpSixPageState createState() => _SignUpSixPageState();
}

class _SignUpSixPageState extends State<SignUpSixPage> {
  String selectedUserType = '';

  void _handleUserTypeSelection(String userType) {
    setState(() {
      selectedUserType = userType;
    });
  }

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
              'assets/images/image6.jpg',
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(
                          vertical:
                              16.0), // Add padding of 16.0 pixels vertically (top and bottom)
                      child: Row(
                        children: [
                          Expanded(child: Divider(color: Colors.black)),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              'Select Level',
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
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12.0),
                            child: ElevatedButton(
                              onPressed: () {
                                _handleUserTypeSelection('interact');
                              },
                              style: ElevatedButton.styleFrom(
                                padding:
                                    EdgeInsets.zero, // Remove internal padding
                                minimumSize: const Size(double.infinity,
                                    50.0), // Set the minimum size for the button
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      8.0), // Optionally, add rounded corners
                                ),
                                foregroundColor: Colors.white,
                                backgroundColor: selectedUserType == 'interact'
                                    ? Colors.blue
                                    : Colors.grey,
                              ),
                              child: const Text(
                                'Interact',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight
                                      .bold, // Set font weight to bold
                                  fontSize: 22.0, // Set the desired font size
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: ElevatedButton(
                              onPressed: () {
                                _handleUserTypeSelection('rotaract');
                              },
                              style: ElevatedButton.styleFrom(
                                padding:
                                    EdgeInsets.zero, // Remove internal padding
                                minimumSize: const Size(double.infinity,
                                    50.0), // Set the minimum size for the button
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      8.0), // Optionally, add rounded corners
                                ),
                                foregroundColor: Colors.white,
                                backgroundColor: selectedUserType == 'rotaract'
                                    ? const Color(0xFF354275)
                                    : Colors.grey,
                              ),
                              child: const Text(
                                'Rotaract',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight
                                      .bold, // Set font weight to bold
                                  fontSize: 22.0, // Set the desired font size
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12.0),
                            child: ElevatedButton(
                              onPressed: () {
                                _handleUserTypeSelection('rotary');
                              },
                              style: ElevatedButton.styleFrom(
                                padding:
                                    EdgeInsets.zero, // Remove internal padding
                                minimumSize: const Size(double.infinity,
                                    50.0), // Set the minimum size for the button
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      8.0), // Optionally, add rounded corners
                                ),
                                foregroundColor: Colors.white,
                                backgroundColor: selectedUserType == 'rotary'
                                    ? const Color(0xFF354275)
                                    : Colors.grey,
                              ),
                              child: const Text(
                                'Rotary',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight
                                      .bold, // Set font weight to bold
                                  fontSize: 22.0, // Set the desired font size
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: ElevatedButton(
                              onPressed: () {
                                _handleUserTypeSelection('guest');
                              },
                              style: ElevatedButton.styleFrom(
                                padding:
                                    EdgeInsets.zero, // Remove internal padding
                                minimumSize: const Size(double.infinity,
                                    50.0), // Set the minimum size for the button
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      8.0), // Optionally, add rounded corners
                                ),
                                foregroundColor: Colors.white,
                                backgroundColor: selectedUserType == 'guest'
                                    ? const Color(0xFF354275)
                                    : Colors.grey,
                              ),
                              child: const Text(
                                'Guest',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight
                                      .bold, // Set font weight to bold
                                  fontSize: 22.0, // Set the desired font size
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // const SizedBox(height: 16.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUpSevenPage(
                                  // userType: selectedUserType,
                                  //selectedUserType: selectedUserType,
                                  ),
                            ),
                          );
                        },
                        child: const Text(
                          'Not Sure?',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0,
                            color: Colors.grey,
                          ),
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ),

                    //  const SizedBox(height: 16.0),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          if (selectedUserType.isNotEmpty) {
                            String userType = '';
                            if (selectedUserType == 'interact' ||
                                selectedUserType == 'rotaract' ||
                                selectedUserType == 'rotary') {
                              userType = 'Club';
                            } else if (selectedUserType == 'guest') {
                              userType = 'Region';
                            }

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignUpPage(
                                  userType: userType,
                                  selectedUserType: selectedUserType,
                                ),
                              ),
                            );
                          } else {
                            // Show an error message or handle the case when no user type is selected.
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(double.infinity,
                              50.0), // Set the minimum size for the button
                          foregroundColor: Colors.white,
                          backgroundColor: const Color(0xFF354275),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                30.0), // Set border radius to 8.0
                          ),
                        ),
                        child: const Text(
                          'CONTINUE',
                          style: TextStyle(
                            fontWeight:
                                FontWeight.bold, // Set font weight to bold
                            fontSize: 30.0, // Set the font size to 36
                          ),
                        ),
                      ),
                    ),
                    //const SizedBox(height: 16.0),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 56.0,
                        bottom: 12.0,
                      ),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: const TextSpan(
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Already have an account? ',
                            ),
                            TextSpan(
                              text: 'Login',
                              style: TextStyle(
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ),
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
