import 'package:flutter/material.dart';
import 'event_card.dart';
import 'home_page.dart';

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
      home: ProjectPageThree(),
    );
  }
}

class ProjectPageThree extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<ProjectPageThree> {
  String? selectedPaymentMethod;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Container(
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          child: const Row(
            children: [
              Expanded(
                child: TextField(
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    hintText: 'Search',
                    hintStyle: TextStyle(color: Colors.black),
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search, color: Colors.black),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        leading: Container(
          padding: const EdgeInsets.only(left: 14.0),
          child: IconButton(
            icon: const Icon(Icons.account_circle, color: Colors.black),
            onPressed: () {
              // Add functionality for the avatar icon
            },
          ),
        ),
        actions: [
          Container(
            padding: const EdgeInsets.only(right: 14.0),
            child: IconButton(
              icon: const Icon(Icons.menu, color: Colors.black),
              onPressed: () {
                // Add functionality for the hamburger menu icon
              },
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 300.0,
                  color: Colors.white,
                  child: Container(
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 20.0),
                const Text(
                  'Payment Details',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                const SizedBox(height: 10.0),
                Container(
                  height: 1.0,
                  color: Colors.black,
                ),
                const SizedBox(height: 10.0),
                const Text(
                  'Event Name',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(height: 5.0),
                const Text(
                  'Mambo Yana Badilika',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(height: 20.0),
                const Text(
                  'Event Date',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(height: 5.0),
                const Text(
                  'Sat, 24 June, 2023',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(height: 10.0),
                Container(
                  height: 1.0,
                  color: Colors.black,
                ),
                const SizedBox(height: 10.0),
                const Text(
                  'Ticket Type',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(height: 5.0),
                const Text(
                  'Rotaractor',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(height: 20.0),
                const Text(
                  'Name',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(height: 5.0),
                const Text(
                  'Joshua Kihara Kimani',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(height: 10.0),
                Container(
                  height: 1.0,
                  color: Colors.black,
                ),
                const SizedBox(height: 10.0),
                const Text(
                  'Ticket Costs',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(height: 5.0),
                const Text(
                  'KES 200',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(height: 10.0),
                Container(
                  height: 1.0,
                  color: Colors.black,
                ),
                const SizedBox(height: 10.0),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.add),
                  ],
                ),
                const SizedBox(height: 10.0),
                Container(
                  height: 1.0,
                  color: Colors.black,
                ),
                const SizedBox(height: 10.0),
                const Text(
                  'Payment Methods',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(height: 10.0),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              selectedPaymentMethod = "M-Pesa";
                            });
                          },
                          child: const Text('M-Pesa'),
                        ),
                        Expanded(
                          flex: 10,
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Radio(
                              value: "M-Pesa",
                              groupValue: selectedPaymentMethod,
                              onChanged: (value) {
                                setState(() {
                                  selectedPaymentMethod = value as String?;
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              selectedPaymentMethod = "Visa";
                            });
                          },
                          child: const Text('Visa'),
                        ),
                        Expanded(
                          flex: 10,
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Radio(
                              value: "Visa",
                              groupValue: selectedPaymentMethod,
                              onChanged: (value) {
                                setState(() {
                                  selectedPaymentMethod = value as String?;
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 10.0),
                Container(
                  height: 1.0,
                  color: Colors.black,
                ),
                const SizedBox(height: 10.0),
                const Text(
                  'Add payment method to your Rotary Account',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(height: 5.0),
                const Text(
                  'Add credit or debit card',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(height: 10.0),
                Container(
                  height: 1.0,
                  color: Colors.black,
                ),
                const SizedBox(height: 10.0),
                ElevatedButton(
                  onPressed: selectedPaymentMethod != null
                      ? () {
                          if (selectedPaymentMethod == "M-Pesa") {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => EventCardPage(),
                              ),
                            );
                          } else if (selectedPaymentMethod == "Visa") {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomePage(),
                              ),
                            );
                          }
                        }
                      : null, // Disable button if no payment method is selected
                  child: const Text('DONATE NOW'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
