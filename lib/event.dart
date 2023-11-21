import 'package:flutter/material.dart';
import 'payment.dart';
import 'home_page.dart';

//void main() => runApp( const EventPage(event: null,));

class EventPage extends StatelessWidget {
  const EventPage({Key? key, required this.event}) : super(key: key);

  final Event event;

  @override
  Widget build(BuildContext context) {
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
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Text('Event Name: ${event.name}'),
                  //Text('Event Date: ${event.date.toString()}'),
                  Container(
                    height: 300.0,
                    color: Colors.white,
                    child: Container(
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              event.name,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                              ),
                            ),
                            const Text(
                              'By Rotaract Club Of Muthaiga',
                              style: TextStyle(
                                fontSize: 20.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 5.0),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        padding: const EdgeInsets.all(4.0),
                        child: const Icon(Icons.calendar_today),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  Flex(
                    direction: Axis.horizontal,
                    children: [
                      Expanded(
                        flex:
                            3, // Box takes 3 times the space of the share icon
                        child: Container(
                          height: 30.0,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(width: 10.0),
                      Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.centerRight,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: const Icon(Icons.share),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  const Row(
                    children: [
                      Icon(Icons.calendar_today),
                      SizedBox(width: 10.0),
                      Text(
                        'Sat, 24 June, 2023',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  const Row(
                    children: [
                      Icon(Icons.watch),
                      SizedBox(width: 10.0),
                      Text(
                        '2:00 PM - 5:00 PM',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  const Row(
                    children: [
                      Icon(Icons.location_on),
                      SizedBox(width: 10.0),
                      Text(
                        'Bihi Towers, CBD',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  const Row(
                    children: [
                      Icon(Icons.money),
                      SizedBox(width: 10.0),
                      Text(
                        'Students',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  const Row(
                    children: [
                      Icon(Icons.money),
                      SizedBox(width: 10.0),
                      Text(
                        'Rotaracters',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  const Row(
                    children: [
                      Icon(Icons.money),
                      SizedBox(width: 10.0),
                      Text(
                        'Interacters',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  const Row(
                    children: [
                      Icon(Icons.badge),
                      SizedBox(width: 10.0),
                      Text(
                        'Dress Code',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  const Text(
                    'Event Details',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  const Text(
                    'By Rotaract Club Of Muthaiga By Rotaract Club Of Muthaiga By Rotaract Club Of Muthaiga By Rotaract Club Of Muthaiga By Rotaract Club Of Muthaiga By Rotaract Club Of Muthaiga By Rotaract Club Of Muthaiga By Rotaract Club Of Muthaiga By Rotaract Club Of Mu',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  const Text(
                    'Event Location',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Container(
                    height: 200.0,
                    color: Colors.grey,
                    child: const Center(
                      child: Text(
                        'New Box',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  const Text(
                    'Event Tags',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Flex(
                    direction: Axis.horizontal,
                    children: [
                      Expanded(
                        flex:
                            3, // Box takes 3 times the space of the share icon
                        child: Container(
                          height: 30.0,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(width: 10.0),
                      Expanded(
                        flex:
                            3, // Box takes 3 times the space of the share icon
                        child: Container(
                          height: 30.0,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  const Text(
                    'R.S.V.P.',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  const Row(
                    children: [
                      Icon(Icons.message),
                      SizedBox(width: 10.0),
                      Text(
                        'John Doe',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  const Row(
                    children: [
                      Icon(Icons.message),
                      SizedBox(width: 10.0),
                      Text(
                        'John Doe',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40.0),
                  ElevatedButton(
                    onPressed: () async {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PaymentPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF354275),
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            30), // Adjust the radius as needed
                      ),
                      minimumSize: const Size(
                          double.infinity, 55), // Set the minimum size
                    ),
                    child: const Text(
                      'GET A TICKET',
                      style: TextStyle(
                        fontSize: 36, // Set the font size to 36 pixels
                        fontWeight:
                            FontWeight.bold, // Set the font weight to bold
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  ElevatedButton(
                    onPressed: () async {
                      /*bool loginSuccess = await _performLogin(context);
                            if (loginSuccess) {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const AppMainScreen(),
                                ),
                              );
                            } else {
                              // Add handling for failed login if needed
                            }*/
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            30), // Adjust the radius as needed
                      ),
                      minimumSize: const Size(
                          double.infinity, 55), // Set the minimum size
                    ),
                    child: const Text(
                      'ASK A QUESTION',
                      style: TextStyle(
                        fontSize: 36, // Set the font size to 36 pixels
                        fontWeight:
                            FontWeight.bold, // Set the font weight to bold
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
