import 'package:flutter/material.dart';
import 'side_bar9.dart';

void main() => runApp(const SideBarEight());

class SideBarEight extends StatelessWidget {
  const SideBarEight({Key? key}) : super(key: key);

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
                      child: Text(
                        'Content & Posts',
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
                      icon: const Icon(Icons.menu,
                          color: Colors.white, size: 16.0),
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
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 20.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Container(
                                  height: 20.0,
                                  color: Colors.grey,
                                ),
                              ),
                              const SizedBox(width: 10.0),
                              Expanded(
                                child: Container(
                                  height: 20.0,
                                  color: Colors.grey,
                                ),
                              ),
                              const SizedBox(width: 10.0),
                              Expanded(
                                child: Container(
                                  height: 20.0,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: Container(
                                  height: 200.0,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  height: 200.0,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SideBarNine()),
                                    );
                                  },
                                  child: Container(
                                    height: 200.0,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 20.0),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 150.0,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ]),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: Container(
                                  height: 200.0,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  height: 200.0,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  height: 200.0,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: Container(
                                  height: 200.0,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  height: 200.0,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  height: 200.0,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 200.0,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    height: 200.0,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    height: 200.0,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ])
                        ])))));
  }
}
