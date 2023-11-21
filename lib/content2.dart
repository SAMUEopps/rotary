/*import 'package:flutter/material.dart';
import 'package:flutter_vlc_player/flutter_vlc_player.dart';
import 'package:video_player/video_player.dart';

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
      home: ContentTwoPage(),
    );
  }
}

/*class ContentTwoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
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
                    Expanded(
                      child: Container(
                        color: Colors.grey,
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
}*/


class ContentTwoPage extends StatelessWidget {
  final String videoUrl =
      'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4'; // Replace with your video URL

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
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
                child: VideoPlayerWidget(videoUrl: videoUrl),
              ),
              const SizedBox(height: 20.0), // Space below the video
              const Text(
                'Home Ownership Under 30',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // ... (rest of your content)
            ],
          ),
        ),
      ),
    );
  }
}

/*
class VideoPlayerWidget extends StatefulWidget {
  final String videoUrl;

  VideoPlayerWidget({required this.videoUrl});

  @override
  _VideoPlayerWidgetState createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();

    final Uri uri = Uri.parse(widget.videoUrl);

    _controller = VideoPlayerController.networkUrl(uri)
      ..initialize().then((_) {
        // Ensure the first frame is shown
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return _controller.value.isInitialized
        ? AspectRatio(
            aspectRatio: _controller.value.aspectRatio,
            child: VideoPlayer(_controller),
          )
        : CircularProgressIndicator(); // You can replace this with a loading indicator or a placeholder image
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}



/*class ContentTwoPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class ContentTwoPage extends StatefulWidget {
  ContentTwoPage({ Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<ContentTwoPage> {
  late VlcPlayerController _videoPlayerController;

  @override
  void initState() {
    super.initState();

    _videoPlayerController = VlcPlayerController.network(
      'https://media.w3.org/2010/05/sintel/trailer.mp4',
      hwAcc: HwAcc.full,
      autoPlay: false,
      options: VlcPlayerOptions(),
    );
  }

  @override
  void dispose() async {
    super.dispose();
    await _videoPlayerController.stopRendererScanning();
    await _videoPlayerController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: VlcPlayer(
          controller: _videoPlayerController,
          aspectRatio: 16 / 9,
          placeholder: Center(child: CircularProgressIndicator()),
        ),
      ),
    );
  }
}
*/*/*/ /*

import 'package:flutter/material.dart';
import 'package:flutter_vlc_player/flutter_vlc_player.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ContentTwoPage(),
    );
  }
}

class ContentTwoPage extends StatefulWidget {
  ContentTwoPage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<ContentTwoPage> {
  late VlcPlayerController _videoPlayerController;

  @override
  void initState() {
    super.initState();

    _videoPlayerController = VlcPlayerController.network(
      'https://media.w3.org/2010/05/sintel/trailer.mp4',
      hwAcc: HwAcc.full,
      autoPlay: false,
      options: VlcPlayerOptions(),
    );
  }

  @override
  void dispose() async {
    super.dispose();
    await _videoPlayerController.stopRendererScanning();
    await _videoPlayerController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: VlcPlayer(
          controller: _videoPlayerController,
          aspectRatio: 16 / 9,
          placeholder: Center(child: CircularProgressIndicator()),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

void main() => runApp(const VideoApp());

/// Stateful widget to fetch and then display video content.
class VideoApp extends StatefulWidget {
  const VideoApp({super.key});

  @override
  _VideoAppState createState() => _VideoAppState();
}

class _VideoAppState extends State<VideoApp> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(
        Uri.parse('https://media.w3.org/2010/05/sintel/trailer.mp4'))
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Video Demo',
      home: Scaffold(
        body: Center(
          child: _controller.value.isInitialized
              ? AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                )
              : Container(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _controller.value.isPlaying
                  ? _controller.pause()
                  : _controller.play();
            });
          },
          child: Icon(
            _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
*/

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

void main() => runApp(const VideoApp());

class VideoApp extends StatefulWidget {
  const VideoApp({super.key});

  @override
  _VideoAppState createState() => _VideoAppState();
}

class _VideoAppState extends State<VideoApp> {
  late VideoPlayerController _controller;
  late ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(
      'https://media.w3.org/2010/05/sintel/trailer.mp4' as Uri,
    );

    _chewieController = ChewieController(
      videoPlayerController: _controller,
      aspectRatio: 16 / 9, // Adjust the aspect ratio as needed
      autoInitialize: true,
      looping: false, // Set to true if you want the video to loop
      showControls: true, // Show video controls
      autoPlay: false, // Set to true if you want the video to auto-play
    );

    _controller.initialize().then((_) {
      setState(() {});
    });

    _controller.addListener(() {
      // Add listener to track video progress
      if (_controller.value.isInitialized &&
          !_controller.value.isBuffering &&
          !_controller.value.isPlaying) {
        // Video has ended
        // You can add logic here to handle video completion
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Video Demo',
      home: Scaffold(
        body: Center(
          child: _controller.value.isInitialized
              ? Chewie(
                  controller: _chewieController,
                )
              : CircularProgressIndicator(), // You can customize the loading indicator
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _controller.value.isPlaying
                  ? _controller.pause()
                  : _controller.play();
            });
          },
          child: Icon(
            _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
    _chewieController.dispose();
    //FullScreen.dispose(context); // Dispose fullscreen when the widget is removed
  }
}
