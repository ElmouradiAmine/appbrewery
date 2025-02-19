import 'package:flutter/material.dart';

//This is the main function and the starting point for all our Flutter apps.
void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            title: Text(
              'I Am Rich',
            ),
            backgroundColor: Colors.blueGrey[900],
          ),
          body: Center(
            child: Image(
              image: AssetImage(
                'images/diamond.png',
              ),
            ),
          ),
        ),
      ),
    );
