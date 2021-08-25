import 'package:flutter/material.dart';

// this also allow you to make space between two widgets
// by give it width(space) that you want.
class SizedBox1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SizedBox'),
      ),
      drawer: Drawer(),
      body: SizedBox(
        width: 100,
        height: 100,
        child: Container(
          child: Text('SizedBox'),
          color: Colors.red,
        ),
      ),
    );
  }
}
