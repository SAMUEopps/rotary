import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign Up Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ContentPageOne(),
    );
  }
}

class ContentPageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Container(
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          child: const Center(
            child: FittedBox(
              fit: BoxFit.fitWidth,
              child: Text(
                'Rotary Club Of Muthaiga',
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
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 400.0,
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      height: 50.0,
                      decoration: const BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.grey,
                      ),
                    ),
                    Container(
                      height: 50.0,
                      decoration: const BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20.0), // Space below the three boxes
              const Text(
                'Home Ownership Under 30',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8.0), // Spacing between title and the row
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      'By Rotaract Club Of Muthaiga',
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Flexible(
                    child: Text(
                      '27 June 2023',
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.right,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                  height: 8.0), // Spacing between the row and the line
              const Divider(
                color: Colors.black,
                thickness: 1.0,
              ),
              const SizedBox(height: 6.0), // Spacing below the line
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.share),
                    onPressed: () {
                      // Add functionality for the share icon
                    },
                  ),
                  const Spacer(),
                  const Text(
                    '200',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.favorite),
                    onPressed: () {
                      // Add functionality for the love icon
                    },
                  ),
                ],
              ),
              const SizedBox(height: 6.0), // Spacing below the icons
              const Divider(
                color: Colors.black,
                thickness: 1.0,
              ),
              const SizedBox(height: 12.0), // Spacing below the line
              const Text(
                'Placeholder text for the first paragraph. This is just a placeholder to represent 150 words of content.',
              ),
              const SizedBox(height: 12.0), // Spacing between the paragraphs
              const Text(
                'Placeholder text for the second paragraph. This is just a placeholder to represent 150 words of content.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
