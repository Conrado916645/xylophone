import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static AudioCache player = AudioCache();

  void playSound(int sound) {
    player.play('note$sound.wav');
  }

  Expanded xylophoneKey({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              xylophoneKey(color: Colors.red, soundNumber: 1),
              xylophoneKey(color: Colors.orange, soundNumber: 2),
              xylophoneKey(color: Colors.yellow, soundNumber: 3),
              xylophoneKey(color: Colors.green, soundNumber: 4),
              xylophoneKey(color: Colors.teal, soundNumber: 5),
              xylophoneKey(color: Colors.blue, soundNumber: 6),
              xylophoneKey(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
