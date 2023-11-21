/*import 'package:flutter/material.dart';
import 'projects_page1.dart';
import 'publications_page.dart';
import 'home_page.dart';
import 'library.dart';
import 'opportunities.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign Up Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
        ),
      ),
      home: const BottomNavigationBarWidget(),
    );
  }
}

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({Key? key}) : super(key: key);

  @override
  BottomNavigationBarWidgetState createState() =>
      BottomNavigationBarWidgetState();
}

class BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int _selectedIndex = 2;

  final List<Widget> _pages = [
    const ProjectsPage(),
    const PublicationsPage(),
    HomePage(), // Replace SignUpHomePage() with the correct home page class
    const LibraryPage(),
    const OpportunitiesPage(),
  ];

  void _onNavItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: 'Projects',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label: 'Publications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            label: 'Library',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            label: 'Opportunities',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onNavItemTapped,
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'projects_page1.dart';
import 'publications_page.dart';
import 'home_page.dart';
import 'library.dart';
import 'opportunities.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign Up Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
        ),
      ),
      home: const AppMainScreen(),
    );
  }
}

class AppMainScreen extends StatefulWidget {
  const AppMainScreen({Key? key}) : super(key: key);

  @override
  _AppMainScreenState createState() => _AppMainScreenState();
}

class _AppMainScreenState extends State<AppMainScreen> {
  int _selectedIndex = 2;

  void _onNavItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BottomNavigationBarWidget(
        selectedIndex: _selectedIndex,
        onNavItemTapped: _onNavItemTapped,
      ),
    );
  }
}

class BottomNavigationBarWidget extends StatelessWidget {
  final int selectedIndex;
  final void Function(int) onNavItemTapped;

  BottomNavigationBarWidget({
    Key? key,
    required this.selectedIndex,
    required this.onNavItemTapped,
  }) : super(key: key);

  final List<Widget> _pages = [
    const ProjectsPage(),
    const PublicationsPage(),
    HomePage(), // Replace SignUpHomePage() with the correct home page class
    const LibraryPage(),
    const OpportunitiesPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: 'Projects',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label: 'Publications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            label: 'Library',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            label: 'Opportunities',
          ),
        ],
        currentIndex: selectedIndex,
        onTap: onNavItemTapped,
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'projects_page1.dart';
import 'publications_page.dart';
import 'home_page.dart';
import 'library.dart';
import 'opportunities.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign Up Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AppMainScreen(),
    );
  }
}

class AppMainScreen extends StatefulWidget {
  const AppMainScreen({Key? key}) : super(key: key);

  @override
  _AppMainScreenState createState() => _AppMainScreenState();
}

class _AppMainScreenState extends State<AppMainScreen> {
  int _selectedIndex = 2;

  void _onNavItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BottomNavigationBarWidget(
        selectedIndex: _selectedIndex,
        onNavItemTapped: _onNavItemTapped,
      ),
    );
  }
}

class BottomNavigationBarWidget extends StatelessWidget {
  //final int selectedIndex;
  //final void Function(int) onNavItemTapped;
  final int? selectedIndex;
  final void Function(int)? onNavItemTapped;

  BottomNavigationBarWidget({
    Key? key,
    required this.selectedIndex,
    required this.onNavItemTapped,
  }) : super(key: key);

  final List<Widget> _pages = [
    const ProjectsPage(),
    const PublicationsPage(),
    HomePage(), // Replace SignUpHomePage() with the correct home page class
    const LibraryPage(),
    const OpportunitiesPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        //index: selectedIndex,
        // children: _pages,
        index: selectedIndex ?? 1,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: 'Projects',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label: 'Publications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            label: 'Library',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            label: 'Opportunities',
          ),
        ],
        //currentIndex: selectedIndex,
        //onTap: onNavItemTapped,
        currentIndex: selectedIndex ?? 0, // Default to index 0 if not provided
        onTap: onNavItemTapped, // Might be null, but that's okay

        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey, // Use your desired unselected color
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'projects_page1.dart';
import 'publications_page.dart';
import 'home_page.dart';
import 'library.dart';
import 'opportunities.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign Up Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AppMainScreen(),
    );
  }
}

class AppMainScreen extends StatefulWidget {
  const AppMainScreen({Key? key}) : super(key: key);

  @override
  _AppMainScreenState createState() => _AppMainScreenState();
}

class _AppMainScreenState extends State<AppMainScreen> {
  int? _selectedIndex;

  void _onNavItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BottomNavigationBarWidget(
        selectedIndex: _selectedIndex,
        onNavItemTapped: _onNavItemTapped,
      ),
    );
  }
}

class BottomNavigationBarWidget extends StatelessWidget {
  final int? selectedIndex;
  final void Function(int)? onNavItemTapped;

  BottomNavigationBarWidget({
    Key? key,
    required this.selectedIndex,
    required this.onNavItemTapped,
  }) : super(key: key);

  final List<Widget> _pages = [
    const ProjectsPage(),
    const PublicationsPage(),
    HomePage(),
    const LibraryPage(),
    const OpportunitiesPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex ?? 0,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: 'Projects',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label: 'Publications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            label: 'Library',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            label: 'Opportunities',
          ),
        ],
        currentIndex: selectedIndex ?? 0,
        onTap: onNavItemTapped,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
*/

import 'package:flutter/material.dart';
import 'projects_page1.dart';
import 'publications_page.dart';
import 'home_page.dart';
import 'library.dart';
import 'opportunities.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign Up Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AppMainScreen(),
    );
  }
}

class AppMainScreen extends StatefulWidget {
  const AppMainScreen({Key? key}) : super(key: key);

  @override
  _AppMainScreenState createState() => _AppMainScreenState();
}

class _AppMainScreenState extends State<AppMainScreen> {
  int? _selectedIndex;

  void _onNavItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BottomNavigationBarWidget(
        selectedIndex: _selectedIndex,
        onNavItemTapped: _onNavItemTapped,
      ),
    );
  }
}

class BottomNavigationBarWidget extends StatelessWidget {
  final int? selectedIndex;
  final void Function(int)? onNavItemTapped;

  BottomNavigationBarWidget({
    Key? key,
    required this.selectedIndex,
    required this.onNavItemTapped,
  }) : super(key: key);

  final List<Widget> _pages = [
    ProjectsPage(),
    PublicationsPage(),
    HomePage(),
    LibraryPage(),
    OpportunitiesPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex ?? 2,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: 'Projects',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label: 'Publications',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            label: 'Library',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.work),
            label: 'Opportunities',
          ),
          // Hidden item that still participates in functionality
          if (_shouldShowHiddenItem())
            const BottomNavigationBarItem(
              icon: SizedBox.shrink(), // Empty SizedBox
              label: '',
            ),
        ],
        currentIndex: selectedIndex ?? 2,
        onTap: (index) {
          if (index == _pages.length - 0) {
            onNavItemTapped?.call(5);
          } else {
            onNavItemTapped?.call(index);
          }
        },
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
      ),
    );
  }

  bool _shouldShowHiddenItem() {
    return selectedIndex == _pages.length - 0;
    //return false; // Set the condition to false
  }
}
