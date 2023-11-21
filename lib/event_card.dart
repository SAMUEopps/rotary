/*import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign Up Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: EventCardPage(),
    );
  }
}

class EventCardPage extends StatefulWidget {
  @override
  _EventCardPageState createState() => _EventCardPageState();
}

class _EventCardPageState extends State<EventCardPage> {
  TextEditingController amountController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  bool isProcessing = false; // Track processing state

  void initiateSTKPush() {
    // Replace with your M-Pesa API credentials

    String consumerKey = 'YJQ2CbJQlSbYVvtOf7ZNup6gUtLY8MPN';
    String consumerSecret = '9YyQ6gM5JKV5PYlE';
    String serviceProviderCode = '600986';
    String securityCredential =
        'ET8hhiX9wLi1X0wKTWaxxqjQNCMuGI+5Ud2+akm7sPOgz0vkava7C49HW8BHNLdSkWvdqkD+iMMfLois2zAgYxvPpghYZmKFRbO6VUiTZpfu05MSwQtoQ5V8+I3e7TQ6sGbjOM8hdFvRJvdX16GzmqNHpJ4nbvRCqof46Xsy05KNUEk3xNZ+8Oylu7pTqa4k2QJt/ajirtehlOVHjJIoESf9YG8xFDZ05QTnzPusC64XIEPflhmU0MuLbiSJkT/0PMoKAIPbKIoj4LuLnIt525d8F5MNY5pMOQktYFwuSg80onvKB+RBldzKPcnDJfQjsH59rf2FBqIlDTyOgO1Gag==';
    String phoneNumber = phoneNumberController.text;

    String amountText = amountController.text;

    String callbackUrl = 'YOUR_CALLBACK_URL';

    // Construct the API endpoint URLs
    String oauthUrl =
        'https://api.safaricom.co.ke/oauth/v1/generate?grant_type=client_credentials';
    String stkPushUrl =
        'https://api.safaricom.co.ke/mpesa/stkpush/v1/processrequest';

    // Construct the headers with Base64-encoded consumer key and secret
    String auth =
        'Basic ' + base64Encode(utf8.encode('$consumerKey:$consumerSecret'));
    Map<String, String> headers = {
      "Authorization": auth,
    };

    setState(() {
      isProcessing = true; // Set processing state to true
    });

    // Get the OAuth token
    http
        .post(Uri.parse(oauthUrl), headers: headers)
        .then((http.Response response) {
      if (response.statusCode == 200) {
        Map<String, dynamic> data = json.decode(response.body);
        String oauthToken = data['access_token'];

        // Construct the request payload
        Map<String, dynamic> payload = {
          "BusinessShortCode": serviceProviderCode,
          "Password": securityCredential,
          "Timestamp": DateTime.now().toIso8601String().split(".")[0],
          "TransactionType": "CustomerPayBillOnline",
          "Amount": amountText.toString(),
          "PartyA": phoneNumber,
          "PartyB": serviceProviderCode,
          "PhoneNumber": phoneNumber,
          "CallBackURL": callbackUrl,
          "AccountReference": "YOUR_ACCOUNT_REFERENCE",
          "TransactionDesc": "Payment for XYZ"
        };

        // Encode payload to JSON
        String encodedPayload = json.encode(payload);

        // Construct the headers with the OAuth token
        Map<String, String> stkPushHeaders = {
          "Content-Type": "application/json",
          "Authorization": "Bearer $oauthToken",
        };

        // Send the STK Push POST request
        http
            .post(Uri.parse(stkPushUrl),
                headers: stkPushHeaders, body: encodedPayload)
            .then(
          (http.Response response) {
            if (response.statusCode == 200) {
              print("STK Push initiated successfully!");
              print(response.body);
            } else {
              print("Error initiating STK Push: ${response.statusCode}");
            }
          },
        ).catchError((error) {
          print("Error: $error");
        });
      } else {
        print("Error getting OAuth token: ${response.statusCode}");
      }
    }).catchError((error) {
      print("Error: $error");
      // Add error handling here
    }).whenComplete(() {
      setState(() {
        isProcessing = false; // Set processing state to false
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
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
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // ... (existing widgets)
                    const Text(
                      'Deposit',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8.0),
                    const Text(
                      'Send Money To Rotaract Club Of Muthaiga',
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
                      backgroundImage:
                          const AssetImage('assets/images/image2.jpg'),
                    ),
                    const SizedBox(height: 8.0),
                    const Text(
                      'Ticket Name:',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8.0),
                    const Text(
                      'Rotaract ticket',
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
                    // Add a TextFormField for entering the phone number
                    const Text(
                      'Enter Amount Here:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8.0),
                    TextFormField(
                      controller: amountController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          labelText: '',
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                            color: Colors.grey, // Set label color to grey
                          ),
                          filled:
                              true, // Set to true to enable background color
                          fillColor: Colors.grey // Set background color to grey
                          ),
                    ),
                    const SizedBox(height: 8.0),

                    // ... (existing widgets)
                    const Text(
                      'Enter Phone Number Here:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8.0),
                    TextFormField(
                      controller: phoneNumberController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          labelText: '',
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                            color: Colors.grey, // Set label color to grey
                          ),
                          filled:
                              true, // Set to true to enable background color
                          fillColor: Colors.grey // Set background color to grey
                          ),
                    ),

                    const Divider(
                      color: Colors.black,
                      thickness: 1.0,
                      height: 24.0,
                    ),
                    const SizedBox(height: 32.0),
                    ElevatedButton(
                      onPressed: isProcessing
                          ? null
                          : initiateSTKPush, // Disable button during processing
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xFF354275),
                        onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        minimumSize: const Size(double.infinity, 55),
                      ),
                      child: isProcessing
                          ? CircularProgressIndicator() // Show loading indicator during processing
                          : const Text(
                              'DEPOSIT',
                              style: TextStyle(
                                fontSize: 36,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
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

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign Up Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: EventCardPage(),
    );
  }
}

class EventCardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
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
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      'Deposit',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8.0),
                    const Text(
                      'Send Money To Rotaract Club Of Muthaiga',
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
                      backgroundImage:
                          const AssetImage('assets/images/image2.jpg'),
                    ),
                    const SizedBox(height: 8.0),
                    const Text(
                      'Ticket Name:',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8.0),
                    const Text(
                      'Rotaract ticket',
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
                      'Enter Amount Here:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8.0),
                    TextFormField(
                      //controller: phoneNumberController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          labelText: '',
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                            color: Colors.grey, // Set label color to grey
                          ),
                          filled:
                              true, // Set to true to enable background color
                          fillColor: Colors.grey // Set background color to grey
                          ),
                    ),
                    const SizedBox(height: 8.0),
                    const Text(
                      'Enter Phone Number Here:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8.0),
                    TextFormField(
                      // controller: phoneNumberController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          labelText: '',
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                            color: Colors.grey, // Set label color to grey
                          ),
                          filled:
                              true, // Set to true to enable background color
                          fillColor: Colors.grey // Set background color to grey
                          ),
                    ),
                    const Divider(
                      color: Colors.black,
                      thickness: 1.0,
                      height: 24.0,
                    ),
                    const SizedBox(height: 32.0),
                    ElevatedButton(
                      onPressed: () {
                        // Add your button onPressed action here
                      },
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xFF354275),
                        onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        minimumSize: const Size(double.infinity, 55),
                      ),
                      child: const Text(
                        'DEPOSIT',
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
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
*/

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:io';

void main() {
  runApp(MyApp());
}

class MpesaC2bCredential {
  static const String consumerKey = 'YJQ2CbJQlSbYVvtOf7ZNup6gUtLY8MPN';
  static const String consumerSecret = '9YyQ6gM5JKV5PYlE';
  static const String apiURL =
      'https://sandbox.safaricom.co.ke/oauth/v1/generate?grant_type=client_credentials';
}

class MpesaAccessToken {
  static String? validatedMpesaAccessToken;

  static Future<void> fetchAccessToken() async {
    print('Consumer Key: ${MpesaC2bCredential.consumerKey}');
    print('Consumer Secret: ${MpesaC2bCredential.consumerSecret}');

    final response = await http.get(
      Uri.parse(MpesaC2bCredential.apiURL),
      headers: {
        HttpHeaders.authorizationHeader: basicAuthHeader(),
      },
    );

    print('Access Token Response: ${response.body}');

    final data = json.decode(response.body);
    validatedMpesaAccessToken = data['access_token'];
    print('Access Token: $validatedMpesaAccessToken');
  }

  static String basicAuthHeader() {
    final auth = base64Encode(utf8.encode(
        '${MpesaC2bCredential.consumerKey}:${MpesaC2bCredential.consumerSecret}'));
    return 'Basic $auth';
  }
}

class LipanaMpesaPpassword {
  static String lipaTime = DateTime.now()
      .toUtc()
      .toString()
      .replaceAll("-", "")
      .replaceAll(":", "")
      .replaceAll(" ", "")
      .substring(0, 14);
  static const String businessShortCode = '174379';
  static const String passkey =
      'bfb279f9aa9bdbcf158e97dd71a467cd2e0c893059b10f78e6b72ada1ed2c919';
  static String dataToEncode = '$businessShortCode$passkey$lipaTime';
  static String onlinePassword = base64Encode(utf8.encode(dataToEncode));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mpesa Integration',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: EventCardPage(),
    );
  }
}

class EventCardPage extends StatefulWidget {
  @override
  _EventCardPageState createState() => _EventCardPageState();
}

class _EventCardPageState extends State<EventCardPage> {
  TextEditingController amountController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
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
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      'Deposit',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8.0),
                    const Text(
                      'Send Money To Rotaract Club Of Muthaiga',
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
                      backgroundImage:
                          const AssetImage('assets/images/image2.jpg'),
                    ),
                    const SizedBox(height: 8.0),
                    const Text(
                      'Ticket Name:',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8.0),
                    const Text(
                      'Rotaract ticket',
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
                      'Enter Amount Here:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8.0),
                    TextFormField(
                      controller: amountController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          labelText: '',
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                            color: Colors.grey, // Set label color to grey
                          ),
                          filled:
                              true, // Set to true to enable background color
                          fillColor: Colors.grey // Set background color to grey
                          ),
                    ),
                    const SizedBox(height: 8.0),
                    const Text(
                      'Enter Phone Number Here:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8.0),
                    TextFormField(
                      controller: phoneNumberController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          labelText: '',
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                            color: Colors.grey, // Set label color to grey
                          ),
                          filled:
                              true, // Set to true to enable background color
                          fillColor: Colors.grey // Set background color to grey
                          ),
                    ),
                    const Divider(
                      color: Colors.black,
                      thickness: 1.0,
                      height: 24.0,
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        print('Amount Text: ${amountController.text}');
                        print(
                            'Phone Number Text: ${phoneNumberController.text}');

                        if (amountController.text.isEmpty ||
                            phoneNumberController.text.isEmpty) {
                          print('Amount and phone number are required.');
                          return;
                        }
                        await MpesaAccessToken.fetchAccessToken();

                        await lipaNaMpesaOnline();
                      },
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xFF354275),
                        onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        minimumSize: const Size(double.infinity, 55),
                      ),
                      child: const Text(
                        'DEPOSIT',
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
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

  Future<void> lipaNaMpesaOnline() async {
    await MpesaAccessToken.fetchAccessToken();
    final access_token = MpesaAccessToken.validatedMpesaAccessToken;
    final apiURL =
        'https://sandbox.safaricom.co.ke/mpesa/stkpush/v1/processrequest';
    final headers = {
      HttpHeaders.authorizationHeader: 'Bearer $access_token',
      HttpHeaders.contentTypeHeader: 'application/json',
    };

    final amountText = amountController.text;
    final phoneNumberText = phoneNumberController.text;

    if (amountText.isEmpty || phoneNumberText.isEmpty) {
      print('Amount and phone number are required.');
      return;
    }

    final amount = int.tryParse(amountText);
    final phoneNumber = int.tryParse(phoneNumberText);

    if (amount == null || phoneNumber == null) {
      print('Invalid amount or phone number format.');
      return;
    }

    final request_data = {
      'BusinessShortCode': LipanaMpesaPpassword.businessShortCode,
      'Password': LipanaMpesaPpassword.onlinePassword,
      'Timestamp': LipanaMpesaPpassword.lipaTime,
      'TransactionType': 'CustomerPayBillOnline',
      'Amount':
          int.parse(amountController.text), // Get amount from the input field
      'PartyA': int.parse(
          phoneNumberController.text), // Get phone number from the input field
      'PartyB': LipanaMpesaPpassword.businessShortCode,
      'PhoneNumber': int.parse(
          phoneNumberController.text), // Get phone number from the input field
      'CallBackURL': 'http://192.168.0.105:3000/callback',
      'AccountReference': 'ROTARY',
      'TransactionDesc': 'Testing stk push',
    };

    final response = await http.post(
      Uri.parse(apiURL),
      headers: headers,
      body: jsonEncode(request_data),
    );

    print('Response: ${response.body}');
  }
}
