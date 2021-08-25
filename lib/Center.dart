import 'package:flutter/material.dart';
// when you put widget inside Center that widget will be in the center

class Center1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Center'),
        ),
        drawer: Drawer(),
        body: Container(
          width: 100,
          height: 100,
          color: Colors.red,
          child: Center(
            child: Text(
              'Center',
              style: TextStyle(fontSize: 26),
            ),
          ),
        ));
  }
}
