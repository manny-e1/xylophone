import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int num) {
    final player = AudioCache();
    player.play('note$num.wav');
  }

  Widget buildKey({Color color, int num}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(num);
        },
        color: color,
        child: Text(""),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(color: Colors.red, num: 1),
                buildKey(color: Colors.orange, num: 2),
                buildKey(color: Colors.yellow, num: 3),
                buildKey(color: Colors.green, num: 4),
                buildKey(color: Colors.green[900], num: 5),
                buildKey(color: Colors.blue, num: 6),
                buildKey(color: Colors.purple, num: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
