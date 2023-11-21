import 'package:flutter/material.dart';

void main() => runApp(const SideBarSTwo());

class SideBarSTwo extends StatelessWidget {
  const SideBarSTwo({Key? key}) : super(key: key);

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
            child: const Center(
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: Text(
                  'Event Details',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          leading: Container(
            padding: const EdgeInsets.only(left: 14.0),
            child: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {
                // Add functionality for the arrow back icon
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
        body: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
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
                  Row(
                    children: [
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Mambo Yana Badilika',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                              ),
                            ),
                            Text(
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
