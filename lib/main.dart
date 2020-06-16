import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buttonMusic({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buttonMusic(color: Colors.red, soundNumber: 1),
              buttonMusic(color: Colors.orange, soundNumber: 2),
              buttonMusic(color: Colors.yellow, soundNumber: 3),
              buttonMusic(color: Colors.green, soundNumber: 4),
              buttonMusic(color: Colors.teal, soundNumber: 5),
              buttonMusic(color: Colors.blue, soundNumber: 6),
              buttonMusic(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
