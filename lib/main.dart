import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildKey({required Color Color, required int soundNumber}) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color)),
        onPressed: () {
          playSound(soundNumber);
        },
        child: const Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.black,
          body: SafeArea(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(Color: Colors.red, soundNumber: 1),
              buildKey(Color: Colors.orange, soundNumber: 2),
              buildKey(Color: Colors.yellow, soundNumber: 3),
              buildKey(Color: Colors.green, soundNumber: 4),
              buildKey(Color: Colors.teal, soundNumber: 5),
              buildKey(Color: Colors.blue, soundNumber: 6),
              buildKey(Color: Colors.purple, soundNumber: 7),
            ],
          ))),
    );
  }
}
