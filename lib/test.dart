import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Test extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        drawer: Drawer(),
        body: Text(
          'Hello world3',
          style: TextStyle(
              fontSize: 26,
              color: Colors.red[500],
              fontWeight: FontWeight.w500,
              shadows: [
                Shadow(
                    color: Colors.red, blurRadius: 30, offset: Offset(10, 10))
              ]),
        ),
      ),
    );
  }
}
