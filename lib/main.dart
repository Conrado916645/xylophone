import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  static AudioCache player = AudioCache();

  void playSound(int sound){
    player.play('note$sound.wav');
  }

  Widget xylophoneKey(color,int sound){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(sound);
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
              xylophoneKey(Colors.red,1),
              xylophoneKey(Colors.orange,2),
              xylophoneKey(Colors.yellow,3),
              xylophoneKey(Colors.green,4),
              xylophoneKey(Colors.teal,5),
              xylophoneKey(Colors.blue,6),
              xylophoneKey(Colors.purple,7)
            ],
          ),
        ),
      ),
    );
  }
}
