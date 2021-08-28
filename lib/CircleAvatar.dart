import 'package:flutter/material.dart';

class CircleAvatar1 extends StatefulWidget {
  @override
  _CircleAvatar1State createState() => _CircleAvatar1State();
}

class _CircleAvatar1State extends State<CircleAvatar1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Circle Avatar'),
      ),
      drawer: Drawer(),
      body: Container(
        color: Colors.red,
        child: Center(
          child: CircleAvatar(
            // backgroundColor: Colors.red,
            backgroundImage: AssetImage('assets/download.jpeg'),
            // radius make circle bigger, default value is 20.
            radius: 40,
            child: Text(
              '00:00',
              style: TextStyle(color: Colors.black87),
            ),
          ),
        ),
      ),
    );
  }
}
