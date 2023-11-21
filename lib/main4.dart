/*import 'package:flutter/material.dart';
import 'signup_six.dart';

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
      home: SignUpPage(),
    );
  }
}

class SignUpPage extends StatelessWidget {
  final FocusNode _usernameFocus = FocusNode();
  final FocusNode _phoneFocus = FocusNode();
  final FocusNode _emailFocus = FocusNode();
  final FocusNode _educationFocus = FocusNode();
  final FocusNode _professionFocus = FocusNode();
  final FocusNode _levelFocus = FocusNode();
  final FocusNode _regionFocus = FocusNode();
  final FocusNode _cityTownFocus = FocusNode();
  final FocusNode _interestsFocus = FocusNode();
  final FocusNode _passwordFocus = FocusNode();

  // Constructor to receive the selected user type
  final String selectedUserType;
  SignUpPage({required this.selectedUserType});

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
              'assets/images/image12.jpg',
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
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Signup',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      _buildFormField(
                        labelText: 'User Name',
                        hintText: 'Enter your username',
                        focusNode: _usernameFocus,
                      ),
                      _buildFormField(
                        labelText: 'Phone',
                        hintText: 'Enter your phone number',
                        focusNode: _phoneFocus,
                      ),
                      _buildFormField(
                        labelText: 'Email',
                        hintText: 'Enter your email',
                        focusNode: _emailFocus,
                      ),
                      _buildFormField(
                        labelText: 'Education',
                        hintText: 'Enter your education details',
                        focusNode: _educationFocus,
                      ),
                      _buildFormField(
                        labelText: 'Profession',
                        hintText: 'Enter your profession',
                        focusNode: _professionFocus,
                      ),
                      _buildFormField(
                        labelText: 'Level',
                        hintText: 'Enter your level',
                        focusNode: _levelFocus,
                      ),
                      // Custom fields based on selected user type
                      if (selectedUserType == 'guest')
                        _buildFormField(
                          labelText: 'Region',
                          hintText: 'Enter your region',
                          focusNode: _regionFocus,
                        ),
                      if (selectedUserType == 'guest')
                        _buildFormField(
                          labelText: 'City/Town',
                          hintText: 'Enter your city/town',
                          focusNode: _cityTownFocus,
                        ),
                      if (selectedUserType != 'guest')
                        _buildFormField(
                          labelText: 'Interests',
                          hintText: 'Enter your interests',
                          focusNode: _interestsFocus,
                        ),

                      _buildFormField(
                        labelText: 'Password',
                        hintText: 'Enter your password',
                        focusNode: _passwordFocus,
                        isObscureText: true,
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          // Add button functionality
                        },
                        child: const Text('SIGN UP'),
                      ),
                      const SizedBox(height: 10),
                      GestureDetector(
                        onTap: () {
                          // Add onTap functionality
                        },
                        child: const Text(
                          'Already have an account? Login',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16.0,
                            decoration: TextDecoration.underline,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFormField({
    required String labelText,
    required String hintText,
    required FocusNode focusNode,
    bool isObscureText = false,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelText,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: hintText,
              filled: true,
              fillColor: Colors.grey[200],
              floatingLabelBehavior: FloatingLabelBehavior.auto,
              hintStyle: TextStyle(
                color: focusNode.hasFocus ? null : Colors.grey[400],
              ),
            ),
            focusNode: focusNode,
            obscureText: isObscureText,
          ),
        ],
      ),
    );
  }
}
*/