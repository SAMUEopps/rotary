import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:ui' as ui;
import 'dart:async';
import 'signup_one.dart';
import 'package:firebase_core/firebase_core.dart';

import 'signup_ten.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  // Set allowed orientations to portrait up, portrait down, landscape left, and landscape righ
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: SplashScreen(),
      initialRoute: '/', // Set the initial route
      routes: {
        '/': (context) =>
            SplashScreen(), // Set the SplashScreen as the initial route
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

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  ui.Image? _topLeftImage;
  ui.Image? _bottomRightImage;
  bool _isLoading = true; // Track the loading state

  @override
  void initState() {
    super.initState();
    loadImages();

    // Use the Timer to show the splash screen for 4 seconds
    Timer(const Duration(seconds: 5), () {
      // If the images are still loading, wait for them to finish
      if (_isLoading) {
        setState(() {
          _isLoading = false;
        });
      }
      // Navigate to OnboardingScreen
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => OnboardingScreen(
            slides: [
              OnboardingSlideModel(
                title: 'Rotary International',
                description:
                    'Rotary is a global network of 1.2 million neighbors, friends, leaders, and like-minded problem-solvers who aim to create positive and lasting change in their communities and themselves.',
                image: 'assets/images/on_board1.jpg',
              ),
              OnboardingSlideModel(
                title: 'Our Mission',
                description:
                    'We provide service to others, promote integrity, and advance world understanding, goodwill, and peace through our fellowship of business, professional, and community leaders. Together we see a world where people unite and take action to create lasting change - across the globe, in our communities, and in ourselves.',
                image: 'assets/images/on_board2.jpg',
              ),
              OnboardingSlideModel(
                title: 'About District 9212',
                description:
                    'For ease of administration, Rotary Clubs in one geographical region are clustered into Zones, then Districts. Districts 9212 is comprised of clubs in Kenya, Ethiopia, Eritrea, and South Sudan.',
                image: 'assets/images/on_board3.jpg',
              ),
            ],
          ),
        ),
      );
    });
  }

  Future<void> loadImages() async {
    final topLeftImage = await loadImage(
        'assets/images/district_9212.png', 200, 100,
        fit: BoxFit.contain);

    final bottomRightImage = await loadImage('assets/images/logo.png', 200, 150,
        fit: BoxFit.contain);

    setState(() {
      _topLeftImage = topLeftImage;
      _bottomRightImage = bottomRightImage;
      _isLoading = false; // Set loading state to false after images are loaded
    });

    setState(() {
      _topLeftImage = topLeftImage;
      _bottomRightImage = bottomRightImage;
      _isLoading = false; // Set loading state to false after images are loaded
    });
  }

  Future<ui.Image> loadImage(
      String imagePath, int targetWidth, int targetHeight,
      {required BoxFit fit}) async {
    final image = AssetImage(imagePath);
    final completer = Completer<ui.Image>();
    final listener = ImageStreamListener((info, synchronousCall) async {
      final resizedImage = await info.image.toByteData(
        format: ui.ImageByteFormat.png,
      );
      final codec = await ui.instantiateImageCodec(
          resizedImage!.buffer.asUint8List(),
          targetWidth: targetWidth,
          targetHeight: targetHeight);
      final frame = await codec.getNextFrame();
      completer.complete(frame.image);
    });
    image.resolve(const ImageConfiguration()).addListener(listener);
    return completer.future;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // Use the FutureBuilder to handle the image loading process and display the loader
        child: _isLoading
            ? const CircularProgressIndicator()
            : Stack(
                children: [
                  Image.asset(
                    'assets/images/splash_screen.jpg',
                    fit: BoxFit.contain,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                  ),
                  CustomPaint(
                    painter: SplashPainter(
                      topLeftImage: _topLeftImage,
                      bottomRightImage: _bottomRightImage,
                    ),
                    size: Size.infinite,
                  ),
                ],
              ),
      ),
    );
  }
}

// ... Rest of the code remains the same ...

// Add your SplashPainter and OnboardingSlideModel definitions below if they are used in the code.

class SplashPainter extends CustomPainter {
  final ui.Image? topLeftImage;
  final ui.Image? bottomRightImage;

  SplashPainter({required this.topLeftImage, required this.bottomRightImage});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    // Calculate the radius of the sector shape relative to the screen size
    final radiusFraction = 0.65; // 65% of the shortest side of the screen
    final radius = size.shortestSide * radiusFraction;

    // Move the center of the top-left sector shape to the top-left corner of the canvas
    final topLeftCenterX = 0.0;
    final topLeftCenterY = 0.0;

    // The start angle and end angle of the top-left sector shape
    final topLeftStartAngle = 0.0;
    final topLeftEndAngle = 3.142 / 2; // 90 degrees

    // Draw the top-left sector shape
    canvas.drawArc(
      Rect.fromCircle(
        center: Offset(topLeftCenterX, topLeftCenterY),
        radius: radius,
      ),
      topLeftStartAngle,
      topLeftEndAngle,
      true,
      paint,
    );

    // Calculate the center of the bottom-right sector shape relative to the screen size
    final bottomRightCenterX = size.width;
    final bottomRightCenterY = size.height;

    // The start angle and end angle of the bottom-right sector shape
    final bottomRightStartAngle = 3.142; // 180 degrees
    final bottomRightEndAngle = 3 * 3.142 / 2; // 270 degrees

    // Draw the bottom-right sector shape
    canvas.drawArc(
      Rect.fromCircle(
        center: Offset(bottomRightCenterX, bottomRightCenterY),
        radius: radius,
      ),
      bottomRightStartAngle,
      bottomRightEndAngle - bottomRightStartAngle,
      true,
      paint,
    );

    // Calculate the responsive offsets of the images
    if (topLeftImage != null && bottomRightImage != null) {
      final topLeftImageOffset = Offset(
        topLeftCenterX +
            radius *
                0.15, // Move slightly to the right (e.g., 15% of the radius)
        topLeftCenterY +
            radius * 0.15, // Move slightly down (e.g., 15% of the radius)
      );

      // Move the bottom image slightly up with 100px and slightly to the left with 100px
      final bottomRightImageOffset = Offset(
        bottomRightCenterX -
            radius * 0.25 -
            100, // Move slightly to the left and subtract 100px
        bottomRightCenterY -
            radius * 0.15 -
            100, // Move slightly up and subtract 100px
      );

      canvas.drawImage(topLeftImage!, topLeftImageOffset, paint);
      canvas.drawImage(bottomRightImage!, bottomRightImageOffset, paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class CurvedBackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, 60); // Start at the top-left
    path.quadraticBezierTo(
        size.width / 2, 0, size.width, 60); // Curved part at the top
    path.lineTo(size.width, size.height); // End at the bottom-right
    path.lineTo(0, size.height); // End at the bottom-left
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class OnboardingScreen extends StatefulWidget {
  final List<OnboardingSlideModel> slides;

  OnboardingScreen({required this.slides});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentSlideIndex = 0; // Variable to track the current slide index

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        child: PageView.builder(
          controller: _pageController,
          itemCount: widget.slides.length,
          onPageChanged: (index) {
            setState(() {
              _currentSlideIndex =
                  index; // Update the current slide index when it changes
            });
          },
          itemBuilder: (context, index) {
            return OnboardingSlide(
              title: widget.slides[index].title,
              description: widget.slides[index].description,
              image: widget.slides[index].image,
              pageController: _pageController,
              slidesLength: widget.slides.length,
              currentSlideIndex: _currentSlideIndex,
            );
          },
        ),
      ),
    );
  }
}

class OnboardingSlideModel {
  final String title;
  final String description;
  final String image;

  OnboardingSlideModel({
    required this.title,
    required this.description,
    required this.image,
  });
}

class OnboardingSlide extends StatelessWidget {
  final String title;
  final String description;
  final String image;
  final PageController pageController;
  final int slidesLength;
  final int
      currentSlideIndex; // Add a new variable to receive the current slide index

  const OnboardingSlide({
    required this.title,
    required this.description,
    required this.image,
    required this.pageController,
    required this.slidesLength,
    required this.currentSlideIndex, // Pass the current slide index as a parameter
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Image.asset(
            image,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          // Curved Background
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: ClipPath(
              clipper: CurvedBackgroundClipper(),
              child: SizedBox(
                height: 500.0, // Adjust the height as needed
                child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(20.0),
                  margin: EdgeInsets.only(bottom: 0.0), // Add bottom margin
                  child: Column(
                    children: [
                      SizedBox(height: 10.0),
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: Text(
                          description,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          if (currentSlideIndex > 0)
                            IconButton(
                              icon: Icon(Icons.arrow_back),
                              onPressed: () {
                                pageController.previousPage(
                                  duration: Duration(milliseconds: 300),
                                  curve: Curves.easeInOut,
                                );
                              },
                            ),
                          Spacer(),
                          Text(
                            '...',
                            style: TextStyle(fontSize: 24.0),
                          ),
                          Spacer(),
                          ElevatedButton(
                            onPressed: () {
                              if (pageController.page != slidesLength - 1) {
                                pageController.nextPage(
                                  duration: Duration(milliseconds: 300),
                                  curve: Curves.easeInOut,
                                );
                              } else {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignUpPage(),
                                  ),
                                );
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              elevation: 0,
                            ),
                            child: _buildForwardIcon(),
                          ),
                        ],
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

  // Function to build the icon based on the current slide index
  Widget _buildForwardIcon() {
    if (currentSlideIndex == slidesLength - 1) {
      // If it's the last slide, display a checkmark icon
      return const Icon(
        Icons.check,
        color: Colors.black,
      );
    } else {
      // If it's not the last slide, display the regular forward arrow icon
      return const Icon(
        Icons.arrow_forward,
        color: Colors.black,
      );
    }
  }
}
