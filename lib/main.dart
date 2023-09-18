import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void playSound(int soundNo){
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/note$soundNo.wav"),
      autoStart: true,
      showNotification: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment:  CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound(1);
                  },
                  style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.red), // Set the background color to red
                ),
                  child: Text(''),

                ),
              ),Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound(2);
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.orange), // Set the background color to red
                  ),
                  child: Text(''),

                ),
              ),Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound(3);
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.yellow), // Set the background color to red
                  ),
                  child: Text(''),

                ),
              ),Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound(4);
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.green), // Set the background color to red
                  ),
                  child: Text(''),

                ),
              ),Expanded(
                child: TextButton(
                  onPressed: () {
                  playSound(5);
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.blue), // Set the background color to red
                  ),
                  child: Text(''),

                ),
              ),Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound(6);
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.purple), // Set the background color to red
                  ),
                  child: Text(''),

                ),
              ),Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound(7);
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.lightGreenAccent), // Set the background color to red
                  ),
                  child: Text(''),

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
