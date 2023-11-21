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
      home: ContentPageThree(),
    );
  }
}

class ContentPageThree extends StatelessWidget {
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
              const SizedBox(height: 50.0), // Space below the app bar
              Container(
                width: 450.0 / 2.0, // Reduce the width by half
                height: 450.0 / 2.0, // Reduce the height by half
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 10.0,
                      spreadRadius: 5.0,
                    ),
                  ],
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 200.0 / 3.0, // Reduce the width by one-third
                      height: 200.0 / 3.0, // Reduce the height by one-third
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20.0), // Space below the circle
              const Center(
                child: Text(
                  'My Story ~ Be Inspired',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 8.0), // Spacing between title and the row
              const Center(
                child: Text(
                  'Fortune Otieno',
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 8.0,
              ), // Spacing between the row and the line
              const SizedBox(height: 6.0), // Spacing below the line
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('1:40'),
                  Expanded(
                    child: Divider(
                      color: Colors.black,
                      thickness: 1.0,
                    ),
                  ),
                  Text('5:38'),
                ],
              ),
              const SizedBox(height: 6.0), // Spacing below the text
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: const Icon(Icons.skip_previous),
                    onPressed: () {
                      // Add functionality for the skip previous icon
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.play_arrow),
                    onPressed: () {
                      // Add functionality for the play icon
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.skip_next),
                    onPressed: () {
                      // Add functionality for the skip next icon
                    },
                  ),
                ],
              ),
              const SizedBox(height: 6.0), // Spacing below the icons
            ],
          ),
        ),
      ),
    );
  }
}



/*import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers_example/components/tabs.dart';
import 'package:audioplayers_example/components/tgl.dart';
import 'package:audioplayers_example/tabs/audio_context.dart';
import 'package:audioplayers_example/tabs/controls.dart';
import 'package:audioplayers_example/tabs/logger.dart';
import 'package:audioplayers_example/tabs/sources.dart';
import 'package:audioplayers_example/tabs/streams.dart';
import 'package:audioplayers_example/utils.dart';
import 'package:toast/toast.dart';
import 'package:flutter/material.dart';


const defaultPlayerCount = 4;

typedef OnError = void Function(Exception exception);

void main() {
  runApp(const MaterialApp(home: ContentPageThree()));
}

class ContentPageThree extends StatefulWidget {
  const ContentPageThree();

  @override
  _ExampleAppState createState() => _ExampleAppState();
}

class _ExampleAppState extends State<ContentPageThree> {
  List<AudioPlayer> audioPlayers = List.generate(
    defaultPlayerCount,
    (_) => AudioPlayer()..setReleaseMode(ReleaseMode.stop),
  );
  int selectedPlayerIdx = 0;

  AudioPlayer get selectedAudioPlayer => audioPlayers[selectedPlayerIdx];
  List<StreamSubscription> streams = [];

  @override
  void initState() {
    super.initState();
    audioPlayers.asMap().forEach((index, player) {
      streams.add(
        player.onPlayerStateChanged.listen(
          (it) {
            switch (it) {
              case PlayerState.stopped:
                toast(
                  'Player stopped!',
                  textKey: Key('toast-player-stopped-$index'),
                );
                break;
              case PlayerState.completed:
                Toast.show(
                  'Player complete!',
                  textStyle: Key('toast-player-complete-$index'),
                );
                break;
              default:
                break;
            }
          },
        ),
      );
      streams.add(
        player.onSeekComplete.listen(
          (it) => toast(
            'Seek complete!',
            textKey: Key('toast-seek-complete-$index'),
          ),
        ),
      );
    });
  }

  @override
  void dispose() {
    streams.forEach((it) => it.cancel());
    super.dispose();
  }

  void _handleAction(PopupAction value) {
    switch (value) {
      case PopupAction.add:
        setState(() {
          audioPlayers.add(AudioPlayer()..setReleaseMode(ReleaseMode.stop));
        });
        break;
      case PopupAction.remove:
        setState(() {
          if (audioPlayers.isNotEmpty) {
            selectedAudioPlayer.dispose();
            audioPlayers.removeAt(selectedPlayerIdx);
          }
          // Adjust index to be in valid range
          if (audioPlayers.isEmpty) {
            selectedPlayerIdx = 0;
          } else if (selectedPlayerIdx >= audioPlayers.length) {
            selectedPlayerIdx = audioPlayers.length - 1;
          }
        });
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AudioPlayers example'),
        actions: [
          PopupMenuButton<PopupAction>(
            onSelected: _handleAction,
            itemBuilder: (BuildContext context) {
              return PopupAction.values.map((PopupAction choice) {
                return PopupMenuItem<PopupAction>(
                  value: choice,
                  child: Text(
                    choice == PopupAction.add
                        ? 'Add player'
                        : 'Remove selected player',
                  ),
                );
              }).toList();
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Tgl(
                  key: const Key('playerTgl'),
                  options: [for (var i = 1; i <= audioPlayers.length; i++) i]
                      .asMap()
                      .map((key, val) => MapEntry('player-$key', 'P$val')),
                  selected: selectedPlayerIdx,
                  onChange: (v) => setState(() => selectedPlayerIdx = v),
                ),
              ),
            ),
          ),
          Expanded(
            child: audioPlayers.isEmpty
                ? const Text('No AudioPlayer available!')
                : IndexedStack(
                    index: selectedPlayerIdx,
                    children: audioPlayers
                        .map(
                          (player) => Tabs(
                            key: GlobalObjectKey(player),
                            tabs: [
                              TabData(
                                key: 'sourcesTab',
                                label: 'Src',
                                content: SourcesTab(
                                  player: player,
                                ),
                              ),
                              TabData(
                                key: 'controlsTab',
                                label: 'Ctrl',
                                content: ControlsTab(
                                  player: player,
                                ),
                              ),
                              TabData(
                                key: 'streamsTab',
                                label: 'Stream',
                                content: StreamsTab(
                                  player: player,
                                ),
                              ),
                              TabData(
                                key: 'audioContextTab',
                                label: 'Ctx',
                                content: AudioContextTab(
                                  player: player,
                                ),
                              ),
                              TabData(
                                key: 'loggerTab',
                                label: 'Log',
                                content: LoggerTab(
                                  player: player,
                                ),
                              ),
                            ],
                          ),
                        )
                        .toList(),
                  ),
          ),
        ],
      ),
    );
  }
}

enum PopupAction {
  add,
  remove,
}
*/