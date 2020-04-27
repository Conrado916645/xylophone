import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static AudioCache player = AudioCache();
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
              Expanded(
                child: FlatButton(
                  color: Colors.red,
                  onPressed: () {
                    player.play('note1.wav');
                  },
                  child: null,
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.orange,
                  onPressed: () {
                    player.play('note2.wav');
                  },
                  child: null,
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.yellow,
                  onPressed: () {
                    player.play('note3.wav');
                  },
                  child: null,
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.green,
                  onPressed: () {
                    player.play('note4.wav');
                  },
                  child: null,
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.teal,
                  onPressed: () {
                    player.play('note5.wav');
                  },
                  child: null,
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.blue,
                  onPressed: () {
                    player.play('note6.wav');
                  },
                  child: null,
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.purple,
                  onPressed: () {
                    player.play('note7.wav');
                  },
                  child: null,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
