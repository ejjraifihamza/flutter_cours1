import 'package:flutter/material.dart';

class WedgetCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Card',
            style: TextStyle(
                color: Colors.white38,
                fontSize: 26,
                backgroundColor: Colors.redAccent),
          ),
        ),
        drawer: Drawer(),
        body: Card(
          color: Colors.black,
          elevation: 20,
          shape: Border.all(color: Colors.red, width: 3),
          shadowColor: Colors.green[900],
          child: Text(
            'Hello world!',
            style: TextStyle(fontSize: 26, color: Colors.cyan),
          ),
        ),
      ),
    );
  }
}
