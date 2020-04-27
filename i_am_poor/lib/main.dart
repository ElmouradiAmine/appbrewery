import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.brown[100],
          appBar: AppBar(
            title: Text(
              'I Am Poor',
            ),
            backgroundColor: Colors.brown[900],
          ),
          body: Center(
            child: Image(
              image: AssetImage('images/Coal.png'),
            ),
          ),
        ),
      ),
    );
