import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int index) {
    final player = AudioCache();
    player.play('note$index.wav');
  }

  Widget _buildKey({int index, Color color}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(index);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              _buildKey(index: 1, color: Colors.red),
              _buildKey(index: 2, color: Colors.orange),
              _buildKey(index: 3, color: Colors.yellow),
              _buildKey(index: 4, color: Colors.green),
              _buildKey(index: 5, color: Colors.teal),
              _buildKey(index: 6, color: Colors.blue),
              _buildKey(index: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
