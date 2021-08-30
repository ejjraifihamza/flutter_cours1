import 'package:flutter/material.dart';

class AppBar1 extends StatefulWidget {
  @override
  _AppBar1State createState() => _AppBar1State();
}

class _AppBar1State extends State<AppBar1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar'),
        leading: IconButton(
          icon: Icon(Icons.add_a_photo),
          onPressed: () {},
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.exit_to_app)),
          IconButton(onPressed: () {}, icon: Icon(Icons.alarm))
        ],
        elevation: 50,
        shadowColor: Colors.green,
        backgroundColor: Colors.green[200],
        brightness: Brightness.dark,
        centerTitle: true,
      ),
    );
  }
}
