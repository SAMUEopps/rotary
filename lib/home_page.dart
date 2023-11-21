import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';
import 'event.dart';
import 'main_page1.dart';
import 'publications_page1.dart';
import 'side_bar1.dart';
import 'side_bar10.dart';
import 'side_bar12.dart';
import 'side_bar4.dart';
import 'side_bar6.dart';
import 'side_bar8.dart';
import 'side_barS1.dart';
import 'side_barS3.dart';
import 'side_barS5.dart';
import 'side_barS7.dart';
import 'dart:math' as math;

class FloatingRowDelegate extends SliverPersistentHeaderDelegate {
  final double minHeight;
  final double maxHeight;
  final Widget child;

  FloatingRowDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => math.max(maxHeight, minHeight);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}

class Event {
  final String name;
  final String image;
  final String club;
  final DateTime date;
  final String time;
  final String amount;
  final List<String> dressCode;
  final String eventDetails;
  final String eventLocation;
  final List<String> eventTags;
  final List<Map<String, String>> eventContacts;

  Event({
    required this.name,
    required this.image,
    required this.club,
    required this.date,
    required this.time,
    required this.amount,
    required this.dressCode,
    required this.eventDetails,
    required this.eventLocation,
    required this.eventTags,
    required this.eventContacts,
  });
}

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
      home: HomePage(),
    );
  }
}

void _launchCalendarApp() async {
  // The URL scheme for launching the calendar app may vary on different platforms.
  // You can use different URLs based on the platform.
  const String urlString = 'content://com.android.calendar/time/';
  final Uri url = Uri.parse(urlString);

  try {
    await launchUrl(url);
  } catch (e) {
    // Handle the error here.
    print('Could not launch calendar app: $e');
  }
}

class HomePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  HomePage({super.key});

  Future<void> fetchData() async {
    const token =
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY1MDlkMWU2ODYxMTA1MTY0NjQyZGU2MiIsImlhdCI6MTY5NTE0MjUzMiwiZXhwIjoxNzI2Njc4NTMyfQ.HTyeHtjRwhJ95mz_EPP66nLd4dvEW1TYdZiG-DPEWUk'; // Replace with your actual token
    final url = Uri.parse('http://127.0.0.1:8888/api/client/list');

    final response = await http.get(
      url,
      headers: {
        'Authorization': 'Bearer $token',
        // Add other headers if needed
      },
    );

    if (response.statusCode == 200) {
      // Process and display the data from the response
      final responseData = json.decode(response.body);

      // Extract and display "company" and "managerName"
      final company = responseData['company'];
      final managerName = responseData['managerName'];

      print('Company: $company');
      print('Manager Name: $managerName');
    } else {
      // Handle errors, e.g., unauthorized access
      print('Error!: ${response.statusCode}');
    }
  }

//class OpportunitiesPage extends StatelessWidget {
  //const OpportunitiesPage({super.key});
  /* Future<List<Event>> fetchEventsFromAPI() async {
    final response = await http.get(
      Uri.parse('http://192.168.186.160:8888/api/event/list'),
    );

    if (response.statusCode == 200) {
      final dynamic jsonData = json.decode(response.body);

      if (jsonData is List) {
        return jsonData.map((eventData) {
          return Event(
            name: eventData['name'],
            image: eventData['image'],
            club: eventData['club'],
            date: DateTime.parse(eventData['date']),
            time: eventData['time'],
            amount: eventData['amount'],
            dressCode: List<String>.from(eventData['dressCode']),
            eventDetails: eventData['eventDetails'],
            eventLocation: eventData['eventLocation'],
            eventTags: List<String>.from(eventData['eventTags']),
            eventContacts: List<Map<String, String>>.from(
              eventData['eventContacts'].map((contact) {
                return {
                  'name': contact['name'].toString(),
                  'phone': contact['phone'].toString(),
                  'email': contact['email'].toString(),
                };
              }),
            ),
          );
        }).toList();
      } else {
        throw Exception('API response is not a list as expected.');
      }
    } else {
      throw Exception('Failed to load data from the API');
    }
  }*/
  Future<List<Event>> fetchEventsFromAPI() async {
    final response = await http
        //.get(Uri.parse('https://rotaryintern.onrender.com/api/events'));
        //.get(Uri.parse('http://127.0.0.1:8888/api/events/list'));
        .get(Uri.parse('http://192.168.186.160:8888/api/event/list'));

    if (response.statusCode == 200) {
      final List<dynamic> jsonData = json.decode(response.body);
      return jsonData.map((eventData) {
        return Event(
          name: eventData['name'],
          image: eventData['image'],
          club: eventData['club'],
          date: DateTime.parse(eventData['date']),
          time: eventData['time'],
          amount: eventData['amount'],
          dressCode: List<String>.from(eventData['dressCode']),
          eventDetails: eventData['eventDetails'],
          eventLocation: eventData['eventLocation'],
          eventTags: List<String>.from(eventData['eventTags']),
          eventContacts: List<Map<String, String>>.from(
            eventData['eventContacts'].map((contact) {
              return {
                'name': contact['name'].toString(),
                'phone': contact['phone'].toString(),
                'email': contact['email'].toString(),
              };
            }),
          ),
        );
      }).toList();
    } else {
      throw Exception('Failed to load data from the API');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey, // Add the GlobalKey to the Scaffold
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Container(
            padding: const EdgeInsets.symmetric(
                horizontal: 10.0), // Increased padding
            decoration: BoxDecoration(
              color: Colors.grey, // Grey box color
              borderRadius: BorderRadius.circular(30.0), // Rounded corners
            ),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    width: double.infinity,
                    child: const TextField(
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        hintText: '',
                        hintStyle: TextStyle(color: Colors.black),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.search,
                      color: Colors.white), // Make the icon white
                  onPressed: () {
                    // Add search functionality here
                  },
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
                _scaffoldKey.currentState?.openDrawer();
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
                  _scaffoldKey.currentState?.openEndDrawer();
                },
              ),
            ),
          ],
        ),
        drawer: Drawer(
          backgroundColor: Colors.grey,
          child: SafeArea(
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                // Close the drawer when tapping outside of the content
                Navigator.pop(context);
              },
              child: Column(
                children: [
                  const UserAccountsDrawerHeader(
                    accountName: Text('Jane Doe'),
                    accountEmail: null,
                    currentAccountPicture: CircleAvatar(
                      child: Icon(Icons.person),
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          ListTile(
                            title: const Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Join/Journey',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            onTap: () {
                              // Handle 'Join/Journey' link tap, navigate to the new page
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SideBarOne()),
                              );
                            },
                          ),
                          ListTile(
                            title: const Align(
                              alignment: Alignment.center,
                              child: Text('Rotary Resources'),
                            ),
                            onTap: () {
                              // Add functionality for 'Rotary Resources' link
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SideBarFour()),
                              );
                            },
                          ),
                          ListTile(
                            title: const Align(
                              alignment: Alignment.center,
                              child: Text('Event Repository'),
                            ),
                            onTap: () {
                              // Add functionality for 'Event Repository' link
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SideBarSix()),
                              );
                            },
                          ),
                          ListTile(
                            title: const Align(
                              alignment: Alignment.center,
                              child: Text('Content & Posts'),
                            ),
                            onTap: () {
                              // Add functionality for 'Content & Posts' link
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SideBarEight()),
                              );
                            },
                          ),
                          ListTile(
                            title: const Align(
                              alignment: Alignment.center,
                              child: Text('Merchandise'),
                            ),
                            onTap: () {
                              // Add functionality for 'Merchandise' link
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SideBarTen()),
                              );
                            },
                          ),
                          ListTile(
                            title: const Align(
                              alignment: Alignment.center,
                              child: Text('Donate'),
                            ),
                            onTap: () {
                              // Add functionality for 'Donate' link
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SideBarTwelve()),
                              );
                            },
                          ),
                          ListTile(
                            title: const Align(
                              alignment: Alignment.center,
                              child: Text('Other Events'),
                            ),
                            onTap: () {
                              // Add functionality for 'Other Events' link
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SideBarSOne()),
                              );
                            },
                          ),
                          ListTile(
                            title: const Align(
                              alignment: Alignment.center,
                              child: Text('Tours & Adventures'),
                            ),
                            onTap: () {
                              // Add functionality for 'Tours & Adventures' link
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SideBarSThree()),
                              );
                            },
                          ),
                          ListTile(
                            title: const Align(
                              alignment: Alignment.center,
                              child: Text('About'),
                            ),
                            onTap: () {
                              // Add functionality for 'About' link
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SideBarSFive()),
                              );
                            },
                          ),
                          ListTile(
                            title: const Align(
                              alignment: Alignment.center,
                              child: Text('Settings'),
                            ),
                            onTap: () {
                              // Add functionality for 'Settings' link
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const SideBarSSeven()),
                              );
                            },
                          ),
                          Container(
                            padding: const EdgeInsets.all(16.0),
                            child: Image.asset(
                              'assets/logo_placeholder.png', // Replace with the path to your image
                              width: 100,
                              height: 100,
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
        endDrawer: Drawer(
          backgroundColor: Colors.grey,
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ListTile(
                    title: const Align(
                      alignment: Alignment.center,
                      child: Text('My Schedule'),
                    ),
                    onTap: () {
                      // Add functionality for 'My Schedule' link
                    },
                  ),
                  ListTile(
                    title: const Align(
                      alignment: Alignment.center,
                      child: Text('My Donations'),
                    ),
                    onTap: () {
                      // Add functionality for 'My Donations' link
                    },
                  ),
                  ListTile(
                    title: const Align(
                      alignment: Alignment.center,
                      child: Text('My Favorites'),
                    ),
                    onTap: () {
                      // Add functionality for 'Event Repository' link
                    },
                  ),
                  ListTile(
                    title: const Align(
                      alignment: Alignment.center,
                      child: Text('My Club Dues'),
                    ),
                    onTap: () {
                      // Add functionality for 'Content & Posts' link
                    },
                  ),
                  ListTile(
                    title: const Align(
                      alignment: Alignment.center,
                      child: Text('My Cart'),
                    ),
                    onTap: () {
                      // Add functionality for 'Merchandise' link
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
        //body: SingleChildScrollView(

        body: CustomScrollView(slivers: <Widget>[
          SliverPersistentHeader(
            floating: true,
            delegate: FloatingRowDelegate(
              minHeight: 150.0, // Minimum height of the floating row
              maxHeight: 150.0, // Maximum height of the floating row
              child: Padding(
                padding: EdgeInsets.only(top: 0.0),
                child: Container(
                  // Customize the appearance of the floating row here
                  color: Colors.white,

                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: const Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(width: 4.0),
                      Expanded(
                        flex: 3,
                        child: GestureDetector(
                          onTap: () {},
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Container(
                              height: 150.0,
                              color: Colors.grey,
                              child: Column(
                                children: [
                                  Positioned(
                                    top: 0,
                                    right: 0,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 20.0,
                                          bottom: 20.0,
                                          left: 0.0,
                                          right: 0.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius: BorderRadius.circular(
                                              5.0), // Border radius for the inner box
                                        ),
                                        height: 60.0,
                                        width: 100.0,
                                        child: Image.network(
                                          'https://firebasestorage.googleapis.com/v0/b/rotary-66829.appspot.com/o/images%2FInteract-R_REV.png?alt=media&token=4d9a468f-4e96-4a83-bc25-88e885f74b21', // Replace with the actual image URL
                                          fit: BoxFit.contain,
                                          height: 60.0,
                                          width: 100.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Divider(
                                    color: Colors.white,
                                    thickness: 1.5,
                                  ),
                                  Container(
                                    height: 28.5,
                                    decoration: const BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10.0),
                                        bottomRight: Radius.circular(10.0),
                                      ),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        'District 9212',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20.0),
                      Expanded(
                        flex: 3,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MainPageOne(),
                              ),
                            );
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Container(
                              height: 150.0,
                              color: Colors.grey,
                              child: Column(
                                children: [
                                  Positioned(
                                    top: 0,
                                    right: 0,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 20.0,
                                          bottom: 20.0,
                                          left: 0.0,
                                          right: 0.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius: BorderRadius.circular(
                                              5.0), // Border radius for the inner box
                                        ),
                                        height: 60.0,
                                        width: 100.0,
                                        child: Image.network(
                                          'https://firebasestorage.googleapis.com/v0/b/rotary-66829.appspot.com/o/images%2FRotaract-R_REV.png?alt=media&token=c144f07e-dc67-4ce1-bb76-e3a9f73d520d', // Replace with the actual image URL
                                          fit: BoxFit.contain,
                                          height: 60.0,
                                          width: 100.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Divider(
                                    color: Colors.white,
                                    thickness: 1.5,
                                  ),
                                  Container(
                                    height: 28.5,
                                    decoration: const BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10.0),
                                        bottomRight: Radius.circular(10.0),
                                      ),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        'District 9212',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 4.0),
                      Expanded(
                        child: Container(
                          alignment: Alignment.centerRight,
                          child: const Icon(
                            Icons.arrow_forward,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              <Widget>[
                SizedBox(height: 0.0),
                // Rest of your content here...
              ],
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate(<Widget>[
            FutureBuilder<List<Event>>(
                future: fetchEventsFromAPI(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return CircularProgressIndicator();
                  } else if (snapshot.hasError) {
                    print('Error: ${snapshot.error}');
                    return Text('Error: ${snapshot.error}');
                  } else {
                    final events = snapshot.data;

                    return ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: events!.length,
                        itemBuilder: (context, index) {
                          final event = events[index];
                          return Container(
                              margin: EdgeInsets.all(10.0),
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    /* Text(
                              event.name,
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Image.network(
                              event.image,
                              width: double.infinity,
                              height: 200.0,
                              fit: BoxFit.cover,
                            ),*/

                                    SizedBox(height: 20.0),
                                    GestureDetector(
                                      // Wrap the container with GestureDetector to handle tap events
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                EventPage(event: event),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        height: 400.0,
                                        color: Colors.white,
                                        child: Column(
                                          children: [
                                            Container(
                                              height: 50.0,
                                              decoration: const BoxDecoration(
                                                color: Colors.grey,
                                                borderRadius: BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(10.0),
                                                  topRight:
                                                      Radius.circular(10.0),
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  // Circle Avatar
                                                  const Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 10.0),
                                                    child: CircleAvatar(
                                                      backgroundColor:
                                                          Colors.white,
                                                      radius: 20.0,
                                                    ),
                                                  ),
                                                  // Text
                                                  Text(
                                                    event.club,
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 16.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),

                                                  // Share Icon
                                                  IconButton(
                                                    icon: const Icon(
                                                        Icons.share,
                                                        color: Colors.white),
                                                    onPressed: () {
                                                      // Handle share button pressed
                                                    },
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                color: Colors.grey,
                                                child: Image.network(
                                                  'https://firebasestorage.googleapis.com/v0/b/rotary-66829.appspot.com/o/images%2Fsignal-2023-07-03-091733_002.jpg?alt=media&token=710aba87-1229-4d2f-95dc-af7f4cadeb55', // Replace with your actual image URL
                                                  fit: BoxFit
                                                      .fill, // Set the fit to fill
                                                  width: double
                                                      .infinity, // Adjust the fit to your preference (cover, contain, etc.)
                                                  loadingBuilder:
                                                      (BuildContext context,
                                                          Widget child,
                                                          ImageChunkEvent?
                                                              loadingProgress) {
                                                    if (loadingProgress ==
                                                        null) {
                                                      return child;
                                                    } else {
                                                      return Center(
                                                        child:
                                                            CircularProgressIndicator(
                                                          value: loadingProgress
                                                                      .expectedTotalBytes !=
                                                                  null
                                                              ? loadingProgress
                                                                      .cumulativeBytesLoaded /
                                                                  (loadingProgress
                                                                          .expectedTotalBytes ??
                                                                      1)
                                                              : null,
                                                        ),
                                                      );
                                                    }
                                                  },
                                                ),
                                              ),
                                            ),
                                            Container(
                                              height: 60.0,
                                              decoration: const BoxDecoration(
                                                color: Colors.grey,
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(10.0),
                                                  bottomRight:
                                                      Radius.circular(10.0),
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  // Circle Avatar
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 10.0),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0), // Adjust the radius for your desired rectangle shape
                                                      child: Container(
                                                        width:
                                                            200.0, // Adjust the width to create a rectangle
                                                        height:
                                                            40.0, // Adjust the height to create a rectangle
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                  // Calender Icon
                                                  IconButton(
                                                    icon: const Icon(
                                                        Icons
                                                            .calendar_today, // Use the calendar icon
                                                        color: Colors.white,
                                                        size:
                                                            36.0), // Increase the size to your desired value
                                                    onPressed: () {
                                                      // Handle calendar button pressed
                                                      _launchCalendarApp();
                                                    },
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ]));
                        });
                    /* Text(
                              'Club: ${event.club}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Date: ${event.date.toLocal()}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Time: ${event.time}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Amount: ${event.amount}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Dress Code: ${event.dressCode.join(', ')}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Event Details: ${event.eventDetails}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Event Location: ${event.eventLocation}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Tags: ${event.eventTags.join(', ')}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Event Contacts:',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            for (var contact in event.eventContacts)
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Name: ${contact['name']}'),
                                  Text('Phone: ${contact['phone']}'),
                                  Text('Email: ${contact['email']}'),
                                ],
                              ),*/
                  }
                })
          ]))
        ]));
  }
}

            

          // Widgets after the ListView.builder
          /*Container(
            // Add any widgets you want after the list
            padding: EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                // Handle button press
              },
              child: Text('Some Button'),
            ),
          ),*/
      

    /*body: FutureBuilder<List<Event>>(
            future: fetchEventsFromAPI(),
            builder: (context, snapshot) {
              //if (snapshot.connectionState == ConnectionState.waiting) {
              //return CircularProgressIndicator(); // Display a loading indicator while fetching data.
              //} else if (snapshot.hasError) {
              //return Text('Errors: ${snapshot.error}');
              //} else {
              // final events = snapshot.data;

              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator(); // Display a loading indicator while fetching data.
              } else if (snapshot.hasError) {
                print(
                    'Error: ${snapshot.error}'); // Print the error to the terminal.
                return Text(
                    'Error: ${snapshot.error}'); // Display the error message in your UI.
              } else {
                final events = snapshot.data;
                // Continue with your UI logic for displaying data.

                return ListView.builder(
                    itemCount: events!.length,
                    itemBuilder: (context, index) {
                      final event = events[index];

                      SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              const SizedBox(height: 20.0), // Breathing space
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      child: const Icon(
                                        Icons.arrow_back,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 4.0),
                                  Expanded(
                                    flex: 3,
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        height: 150.0,
                                        color: Colors.white,
                                        child: Column(
                                          children: [
                                            Expanded(
                                              child: ClipRRect(
                                                borderRadius:
                                                    const BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(10.0),
                                                  topRight:
                                                      Radius.circular(10.0),
                                                ),
                                                child: Image.network(
                                                    'https://firebasestorage.googleapis.com/v0/b/rotary-66829.appspot.com/o/images%2Fchiara-f-MI8He1NWPWg-unsplash.jpg?alt=media&token=2737e43d-e415-45bc-866d-61c0519d0d1e',
                                                    fit: BoxFit
                                                        .fill, // Set the fit to fill
                                                    width: double.infinity),
                                              ),
                                            ),
                                            Container(
                                              height: 30.0,
                                              decoration: const BoxDecoration(
                                                color: Colors.grey,
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(10.0),
                                                  bottomRight:
                                                      Radius.circular(10.0),
                                                ),
                                              ),
                                              child: const Center(
                                                child: Text(
                                                  'Saved',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 18.0,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 20.0),
                                  Expanded(
                                    flex: 3,
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const PublicationsPageOne()), // Replace with the desired page
                                        );
                                      },
                                      child: Container(
                                        height: 150.0,
                                        color: Colors.white,
                                        child: Column(
                                          children: [
                                            Expanded(
                                              child: ClipRRect(
                                                borderRadius:
                                                    const BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(10.0),
                                                  topRight:
                                                      Radius.circular(10.0),
                                                ),
                                                child: Image.network(
                                                    'https://firebasestorage.googleapis.com/v0/b/rotary-66829.appspot.com/o/images%2Fsignal-2023-07-03-091733_002.jpg?alt=media&token=710aba87-1229-4d2f-95dc-af7f4cadeb55',
                                                    fit: BoxFit
                                                        .fill, // Set the fit to fill
                                                    width: double.infinity),
                                              ),
                                            ),
                                            Container(
                                              height: 30.0,
                                              decoration: const BoxDecoration(
                                                color: Colors.grey,
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(10.0),
                                                  bottomRight:
                                                      Radius.circular(10.0),
                                                ),
                                              ),
                                              child: const Center(
                                                child: Text(
                                                  'Posts',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 18.0,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 4.0),
                                  Expanded(
                                    child: Container(
                                      alignment: Alignment.centerRight,
                                      child: const Icon(
                                        Icons.arrow_forward,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20.0),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 0.0),
                                child: Column(
                                  children: [
                                    GestureDetector(
                                      // Wrap the container with GestureDetector to handle tap events
                                      onTap: () {
                                        /* Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const EventPage(),
                          ),
                        );*/
                                      },
                                      child: Container(
                                        height: 400.0,
                                        color: Colors.white,
                                        child: Column(
                                          children: [
                                            Container(
                                              height: 50.0,
                                              decoration: const BoxDecoration(
                                                color: Colors.grey,
                                                borderRadius: BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(10.0),
                                                  topRight:
                                                      Radius.circular(10.0),
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  // Circle Avatar
                                                  const Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 10.0),
                                                    child: CircleAvatar(
                                                      backgroundColor:
                                                          Colors.white,
                                                      radius: 20.0,
                                                    ),
                                                  ),

                                                  // Text
                                                  const Text(
                                                    'Rotaract Club of Nairobi Central',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 16.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),

                                                  // Share Icon
                                                  IconButton(
                                                    icon: const Icon(
                                                        Icons.share,
                                                        color: Colors.white),
                                                    onPressed: () {
                                                      // Handle share button pressed
                                                    },
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                color: Colors.grey,
                                                child: Image.network(
                                                  'https://firebasestorage.googleapis.com/v0/b/rotary-66829.appspot.com/o/images%2Fsignal-2023-07-03-091733_002.jpg?alt=media&token=710aba87-1229-4d2f-95dc-af7f4cadeb55', // Replace with your actual image URL
                                                  fit: BoxFit
                                                      .fill, // Set the fit to fill
                                                  width: double
                                                      .infinity, // Adjust the fit to your preference (cover, contain, etc.)
                                                  loadingBuilder:
                                                      (BuildContext context,
                                                          Widget child,
                                                          ImageChunkEvent?
                                                              loadingProgress) {
                                                    if (loadingProgress ==
                                                        null) {
                                                      return child;
                                                    } else {
                                                      return Center(
                                                        child:
                                                            CircularProgressIndicator(
                                                          value: loadingProgress
                                                                      .expectedTotalBytes !=
                                                                  null
                                                              ? loadingProgress
                                                                      .cumulativeBytesLoaded /
                                                                  (loadingProgress
                                                                          .expectedTotalBytes ??
                                                                      1)
                                                              : null,
                                                        ),
                                                      );
                                                    }
                                                  },
                                                ),
                                              ),
                                            ),
                                            Container(
                                              height: 50.0,
                                              decoration: const BoxDecoration(
                                                color: Colors.green,
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(10.0),
                                                  bottomRight:
                                                      Radius.circular(10.0),
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  // Rectangular Box
                                                  Container(
                                                    height: 50.0,
                                                    decoration:
                                                        const BoxDecoration(
                                                      color: Colors.green,
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(
                                                                20.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                20.0),
                                                      ),
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Container(
                                                          width:
                                                              50.0, // Adjust the width as needed
                                                          color: Colors
                                                              .white, // Rectangular box color
                                                          // Add any child widget inside the rectangular box as needed
                                                        ),
                                                        const Icon(
                                                          Icons
                                                              .calendar_today, // Calendar icon
                                                          color: Colors
                                                              .white, // Icon color
                                                          size:
                                                              30.0, // Adjust the size as needed
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                        height:
                                            16.0), // Add spacing between boxes
                                    Container(
                                      height: 150.0,
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
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                      // Render the event UI here based on your requirements.
                      return Container(
                        margin: EdgeInsets.all(10.0),
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              event.name,
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Image.network(
                              event.image,
                              width: double.infinity,
                              height: 200.0,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              'Club: ${event.club}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Date: ${event.date.toLocal()}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Time: ${event.time}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Amount: ${event.amount}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Dress Code: ${event.dressCode.join(', ')}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Event Details: ${event.eventDetails}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Event Location: ${event.eventLocation}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Tags: ${event.eventTags.join(', ')}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Event Contacts:',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            for (var contact in event.eventContacts)
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Name: ${contact['name']}'),
                                  Text('Phone: ${contact['phone']}'),
                                  Text('Email: ${contact['email']}'),
                                ],
                              ),
                          ],
                        ),
                      );
                    });

                /*child:
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              const SizedBox(height: 20.0), // Breathing space
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      child: const Icon(
                                        Icons.arrow_back,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 4.0),
                                  Expanded(
                                    flex: 3,
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        child: Container(
                                          height: 150.0,
                                          color: Colors.grey,
                                          child: Column(
                                            children: [
                                              Positioned(
                                                top: 0,
                                                right: 0,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 20.0,
                                                          bottom: 20.0,
                                                          left: 0.0,
                                                          right: 0.0),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: Colors.grey,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5.0), // Border radius for the inner box
                                                    ),
                                                    height: 60.0,
                                                    width: 100.0,
                                                    child: Image.network(
                                                      'https://firebasestorage.googleapis.com/v0/b/rotary-66829.appspot.com/o/images%2FInteract-R_REV.png?alt=media&token=4d9a468f-4e96-4a83-bc25-88e885f74b21', // Replace with the actual image URL
                                                      fit: BoxFit.contain,
                                                      height: 60.0,
                                                      width: 100.0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              const Divider(
                                                color: Colors.white,
                                                thickness: 1.5,
                                              ),
                                              Container(
                                                height: 28.5,
                                                decoration: const BoxDecoration(
                                                  color: Colors.grey,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(10.0),
                                                    bottomRight:
                                                        Radius.circular(10.0),
                                                  ),
                                                ),
                                                child: const Center(
                                                  child: Text(
                                                    'District 9212',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 18.0,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 20.0),
                                  Expanded(
                                    flex: 3,
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const MainPageOne(),
                                          ),
                                        );
                                      },
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        child: Container(
                                          height: 150.0,
                                          color: Colors.grey,
                                          child: Column(
                                            children: [
                                              Positioned(
                                                top: 0,
                                                right: 0,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 20.0,
                                                          bottom: 20.0,
                                                          left: 0.0,
                                                          right: 0.0),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: Colors.grey,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5.0), // Border radius for the inner box
                                                    ),
                                                    height: 60.0,
                                                    width: 100.0,
                                                    child: Image.network(
                                                      'https://firebasestorage.googleapis.com/v0/b/rotary-66829.appspot.com/o/images%2FRotaract-R_REV.png?alt=media&token=c144f07e-dc67-4ce1-bb76-e3a9f73d520d', // Replace with the actual image URL
                                                      fit: BoxFit.contain,
                                                      height: 60.0,
                                                      width: 100.0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              const Divider(
                                                color: Colors.white,
                                                thickness: 1.5,
                                              ),
                                              Container(
                                                height: 28.5,
                                                decoration: const BoxDecoration(
                                                  color: Colors.grey,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(10.0),
                                                    bottomRight:
                                                        Radius.circular(10.0),
                                                  ),
                                                ),
                                                child: const Center(
                                                  child: Text(
                                                    'District 9212',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 18.0,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 4.0),
                                  Expanded(
                                    child: Container(
                                      alignment: Alignment.centerRight,
                                      child: const Icon(
                                        Icons.arrow_forward,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              const SizedBox(height: 20.0),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 0.0),
                                child: Column(
                                  children: [
                                    GestureDetector(
                                      // Wrap the container with GestureDetector to handle tap events
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const EventPage(),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        height: 400.0,
                                        color: Colors.white,
                                        child: Column(
                                          children: [
                                            Container(
                                              height: 50.0,
                                              decoration: const BoxDecoration(
                                                color: Colors.grey,
                                                borderRadius: BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(10.0),
                                                  topRight:
                                                      Radius.circular(10.0),
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  // Circle Avatar
                                                  const Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 10.0),
                                                    child: CircleAvatar(
                                                      backgroundColor:
                                                          Colors.white,
                                                      radius: 20.0,
                                                    ),
                                                  ),

                                                  // Text
                                                  const Text(
                                                    'Rotaract Club of Nairobi Central',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 16.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),

                                                  // Share Icon
                                                  IconButton(
                                                    icon: const Icon(
                                                        Icons.share,
                                                        color: Colors.white),
                                                    onPressed: () {
                                                      // Handle share button pressed
                                                    },
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                color: Colors.grey,
                                                child: Image.network(
                                                  'https://firebasestorage.googleapis.com/v0/b/rotary-66829.appspot.com/o/images%2FWhatsApp%20Image%202023-06-20%20at%2020.02.21.jpg?alt=media&token=5b782606-4c7d-4c03-95eb-b5c47393ffbe', // Replace with your actual image URL
                                                  fit: BoxFit.fill,
                                                  width: double.infinity,
                                                  // Adjust the fit to your preference (cover, contain, etc.)
                                                  loadingBuilder:
                                                      (BuildContext context,
                                                          Widget child,
                                                          ImageChunkEvent?
                                                              loadingProgress) {
                                                    if (loadingProgress ==
                                                        null) {
                                                      return child;
                                                    } else {
                                                      return Center(
                                                        child:
                                                            CircularProgressIndicator(
                                                          value: loadingProgress
                                                                      .expectedTotalBytes !=
                                                                  null
                                                              ? loadingProgress
                                                                      .cumulativeBytesLoaded /
                                                                  (loadingProgress
                                                                          .expectedTotalBytes ??
                                                                      1)
                                                              : null,
                                                        ),
                                                      );
                                                    }
                                                  },
                                                ),
                                              ),
                                            ),
                                            Container(
                                              height: 50.0,
                                              decoration: const BoxDecoration(
                                                color: Colors.grey,
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(10.0),
                                                  bottomRight:
                                                      Radius.circular(10.0),
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 10.0),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0), // Adjust the radius for your desired rectangle shape
                                                      child: Container(
                                                        width:
                                                            200.0, // Adjust the width to create a rectangle
                                                        height:
                                                            40.0, // Adjust the height to create a rectangle
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                  // Calender Icon
                                                  IconButton(
                                                    icon: const Icon(
                                                        Icons
                                                            .calendar_today, // Use the calendar icon
                                                        color: Colors.white,
                                                        size:
                                                            36.0), // Increase the size to your desired value
                                                    onPressed: () {
                                                      // Handle calendar button pressed
                                                    },
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                        height:
                                            16.0), // Add spacing between boxes
                                    Container(
                                      height: 150.0,
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
                                  ],
                                ),
                              ),
                            ]
                         )
                      )
                      );
        
                    }
              }
            }));
  }
}
*/*/