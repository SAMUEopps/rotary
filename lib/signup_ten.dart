import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'signup_two.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class SignUpTenPage extends StatelessWidget {
  final String verificationId;
  final String phoneNumber;
  final Map<String, dynamic> formData;
  final List<TextEditingController> otpControllers =
      List.generate(6, (_) => TextEditingController());
  final List<FocusNode> focusNodes = List.generate(6, (_) => FocusNode());

  SignUpTenPage({
    required this.verificationId,
    required this.phoneNumber,
    required this.formData,
  });

  @override
  Widget build(BuildContext context) {
    for (int i = 0; i < 5; i++) {
      otpControllers[i].addListener(() {
        _onDigitEntered(i);
      });
    }

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.blue,
            child: Image.asset(
              'assets/images/image9.jpg', // Replace with your image path
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
                      'Please Enter The 6 Digit Code Sent To Phone number',
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(6, (index) {
                        return Expanded(
                          flex: 1,
                          child: TextField(
                            controller: otpControllers[index],
                            focusNode: focusNodes[index],
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20.0),
                            keyboardType: TextInputType.number,
                            maxLength: 1,
                            onChanged: (text) => _onDigitEntered(index),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey,
                              counterText: '',
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        );
                      }),
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
                        verifyOTP(context);
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

  void dispose() {
    otpControllers.forEach((controller) => controller.dispose());
    focusNodes.forEach((node) => node.dispose());
  }

  void _onDigitEntered(int currentIndex) {
    if (currentIndex < 5) {
      if (otpControllers[currentIndex].text.isNotEmpty) {
        focusNodes[currentIndex + 1].requestFocus();
      }
    }
  }

  void verifyOTP(BuildContext context) async {
    String otp = otpControllers.map((controller) => controller.text).join();
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationId, smsCode: otp);

    try {
      await FirebaseAuth.instance.signInWithCredential(credential);
      print("You are logged in successfully");
      Fluttertoast.showToast(
        msg: "You are logged in successfully",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0,
      );
      // Save the data to the backend API
      bool isDataSentSuccessfully = await saveUserDataToBackendAPI(
          FirebaseAuth.instance.currentUser!.uid);
      print("Is data sent successfully? $isDataSentSuccessfully");

      if (isDataSentSuccessfully) {
        // Navigate to SignUpTwoPage after successful data save
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => SignUpTwoPage(),
          ),
        );
      } else {
        Fluttertoast.showToast(
          msg: "Failed to send data to the backend API",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0,
        );
      }
      // Navigate to SignUpTwoPage after successful data sav
    } catch (e) {
      print("OTP verification failed");
      Fluttertoast.showToast(
        msg: "OTP verification failed",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    }
  }

  Future<bool> saveUserDataToBackendAPI(String uid) async {
    String apiUrl =
        'http://192.168.21.1:3000/api/register'; // Replace with your actual API endpoint

    // Add the data to be sent to the API in the request body
    Map<String, dynamic> userData = {
      'uid': uid,
      'userName': formData['userName'],
      'phone': formData['phone'],
      'email': formData['email'],
      'education': formData['education'],
      'profession': formData['profession'],
      'level': formData['level'],
      'region': formData['region'],
      'cityTown': formData['cityTown'],
      'club': formData['club'],
      'memberCode': formData['memberCode'],
      'interests': formData['interests'],
      'password': formData['password'],
    };

    try {
      print('Before making the API call');
      http.Response response = await http.post(
        Uri.parse(apiUrl),
        headers: {
          'Content-Type': 'application/json', // Set the content type to JSON
        },
        body: json.encode(userData), // Convert userData map to JSON string
      );

      print('After API call');
      if (response.statusCode == 200) {
        print('Data sent to the backend API successfully');
        return true; // Data sent successfully
      } else {
        print('Failed to send data to the backend API');
        return false; // Data not sent successfully
      }
    } catch (e) {
      print('Error while sending data to the backend API: $e');
      return false; // Data not sent successfully
    }
  }
}
