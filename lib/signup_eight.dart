import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'signup_ten.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign Up Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SignUpPage(
        selectedUserType: '',
        userType: '',
      ),
      routes: {
        // '/': (context) => SignUpPage(
        //     selectedUserType: '',
        //   userType: '',
        // )
        '/verification': (context) {
          final args = ModalRoute.of(context)!.settings.arguments
              as Map<String, dynamic>;
          return SignUpTenPage(
            verificationId: args['verificationId']!,
            phoneNumber: args['phoneNumber']!,
            formData: args['formData']!,
          );
        },
      },
    );
  }
}

class SignUpPage extends StatefulWidget {
  final String selectedUserType;
  final String userType;

  SignUpPage({required this.selectedUserType, required this.userType});

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final FocusNode _usernameFocus = FocusNode();
  final FocusNode _phoneFocus = FocusNode();
  final FocusNode _emailFocus = FocusNode();
  final FocusNode _educationFocus = FocusNode();
  final FocusNode _professionFocus = FocusNode();
  final FocusNode _levelFocus = FocusNode();
  final FocusNode _regionFocus = FocusNode();
  final FocusNode _cityTownFocus = FocusNode();
  final FocusNode _clubFocus = FocusNode();
  final FocusNode _memberCodeFocus = FocusNode();
  final FocusNode _interestsFocus = FocusNode();
  final FocusNode _passwordFocus = FocusNode();

  // Constructor to receive the selected user type
  //final String selectedUserType;
  //final String userType;
  //SignUpPage({required this.selectedUserType, required this.userType});

  TextEditingController phoneController = TextEditingController(text: "");
  TextEditingController userNameController = TextEditingController(text: "");
  TextEditingController otpController = TextEditingController();
  TextEditingController emailController = TextEditingController(text: "");
  TextEditingController educationController = TextEditingController(text: "");
  TextEditingController professionController = TextEditingController(text: "");
  TextEditingController levelController = TextEditingController(text: "");
  TextEditingController regionController = TextEditingController(text: "");
  TextEditingController cityTownController = TextEditingController(text: "");
  TextEditingController clubController = TextEditingController(text: "");
  TextEditingController memberCodeController = TextEditingController(text: "");
  TextEditingController interestsController = TextEditingController(text: "");
  TextEditingController passwordController = TextEditingController(text: "");

  FirebaseAuth auth = FirebaseAuth.instance;

  bool otpVisibility = false;

  String verificationID = "";

  Map<String, dynamic> formData = {};

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
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Divider(color: Colors.black),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Text(
                                    'Signup',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Divider(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      const Center(
                        child: CircleAvatar(
                          radius: 50, // Adjust the radius as needed
                          backgroundImage:
                              AssetImage('path_to_your_avatar_image.png'),
                          // Replace 'path_to_your_avatar_image.png' with the actual path to your image asset
                        ),
                      ),

                      _buildFormField(
                        labelText: 'User Name',
                        hintText: '',
                        focusNode: _usernameFocus,
                        controller: userNameController,
                      ),
                      _buildFormField(
                        labelText: 'Phone',
                        hintText: '',
                        focusNode: _phoneFocus,
                        controller:
                            phoneController, // Pass the phone controller
                      ),
                      _buildFormField(
                        labelText: 'Email',
                        hintText: '',
                        focusNode: _emailFocus,
                        controller: emailController,
                      ),
                      _buildFormField(
                        labelText: 'Education',
                        hintText: '',
                        focusNode: _educationFocus,
                        controller: educationController,
                      ),
                      _buildFormField(
                        labelText: 'Profession',
                        hintText: '',
                        focusNode: _professionFocus,
                        controller: professionController,
                      ),
                      _buildFormField(
                        labelText: 'Level',
                        hintText: '',
                        focusNode: _levelFocus,
                        controller: levelController,
                      ),
                      // Custom fields based on selected user type
                      if (widget.selectedUserType == 'guest')
                        _buildFormField(
                          labelText: 'Region',
                          hintText: '',
                          focusNode: _regionFocus,
                          controller: regionController,
                        ),
                      if (widget.selectedUserType == 'guest')
                        _buildFormField(
                          labelText: 'City/Town',
                          hintText: '',
                          focusNode: _cityTownFocus,
                          controller: cityTownController,
                        ),

                      if (widget.selectedUserType == 'interact' ||
                          widget.selectedUserType == 'rotaract' ||
                          widget.selectedUserType == 'rotary')
                        _buildFormField(
                          labelText: 'Club',
                          hintText: '',
                          focusNode: _clubFocus,
                          controller: clubController,
                        ),

                      if (widget.selectedUserType == 'interact' ||
                          widget.selectedUserType == 'rotaract' ||
                          widget.selectedUserType == 'rotary')
                        _buildFormField(
                          labelText: 'Member Code',
                          hintText: '',
                          focusNode: _memberCodeFocus,
                          controller: memberCodeController,
                        ),

                      _buildFormField(
                        labelText: 'Interests',
                        hintText: '',
                        focusNode: _interestsFocus,
                        controller: interestsController,
                      ),

                      _buildFormField(
                        labelText: 'Password',
                        hintText: '',
                        focusNode: _passwordFocus,
                        controller: passwordController,
                        isObscureText: true,
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                              child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Container(
                              height: 55, // Set the height to 55
                              child: ElevatedButton(
                                onPressed: () {
                                  // Trigger login with phone functionality
                                  loginWithPhone(isSignUp: true);
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: const Color(0xFF354275),
                                  onPrimary: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        30), // Adjust the radius as needed
                                  ),
                                ),
                                child: const Text(
                                  'SIGN UP',
                                  style: TextStyle(
                                    fontSize:
                                        34, // Set the font size to 36 pixels
                                    fontWeight: FontWeight
                                        .bold, // Set the font weight to bold
                                  ),
                                ),
                              ),
                            ),
                          )),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 40.0,
                          bottom: 20.0,
                        ),
                        child: Center(
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
  // ... Existing code ...

  Widget _buildFormField({
    required String labelText,
    required String hintText,
    required FocusNode focusNode,
    TextEditingController? controller, // Add TextEditingController
    bool isObscureText = false,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
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
            controller: controller, // Use the provided controller
            decoration: InputDecoration(
              hintText: hintText,
              filled: true,
              fillColor: Colors.grey,
              border: OutlineInputBorder(
                borderSide: BorderSide.none, // Remove the default underline
                borderRadius: BorderRadius.circular(
                    8.0), // Optionally add rounded corners
              ),
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

  // Existing code...

  void saveFormData() {
    // Save the form data temporarily in the 'formData' variable

    formData = {
      'userName': userNameController.text,
      'phone': phoneController.text,
      'email': emailController.text,
      'education': educationController.text,
      'profession': professionController.text,
      'level': levelController.text,
      'region': regionController.text,
      'cityTown': cityTownController.text,
      'club': clubController.text,
      'memberCode': memberCodeController.text,
      'interests': interestsController.text,
      'password': passwordController.text,
    };
    print('Saved FormData: $formData');
  }

  void loginWithPhone({bool isSignUp = false}) async {
    FirebaseAuth auth = FirebaseAuth.instance;

    auth.verifyPhoneNumber(
      phoneNumber: phoneController.text,
      verificationCompleted: (PhoneAuthCredential credential) async {
        await auth.signInWithCredential(credential).then((value) {
          print("You are logged in successfully");
        });
      },
      verificationFailed: (FirebaseAuthException e) {
        print(e.message);
      },
      codeSent: (String verificationId, int? resendToken) {
        if (isSignUp) {
          // Save form data before navigating to the verification page
          saveFormData();
        }
        // Navigate to the verification page after successful login
        navigateToVerificationPage(verificationId, phoneController.text);
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  void navigateToVerificationPage(String verificationId, String phoneNumber) {
    Navigator.pushNamed(context, '/verification', arguments: {
      'formData': formData,
      'verificationId': verificationId,
      'phoneNumber': phoneNumber,
    });
  }
}
