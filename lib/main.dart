import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSounds(int soundNumber) {
    final audioPlayer = AudioPlayer();
    audioPlayer.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildKey(int soundNumber, Color color) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
        ),
        onPressed: () async {
          playSounds(soundNumber);
        },
        child: Text(''),
      ),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          buildKey(1, Colors.red),
          buildKey(2, Colors.orange),
          buildKey(3, Colors.yellow),
          buildKey(4, Colors.green),
          buildKey(5, Colors.teal),
          buildKey(6, Colors.blue),
          buildKey(7, Colors.purple),
        ],
      )),
    ));
  }
}
