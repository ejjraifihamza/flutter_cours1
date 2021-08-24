import 'package:flutter/material.dart';
// icons accept name of icon and size and color

class Icon1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Icons')),
      drawer: Drawer(),
      body: Icon(
        Icons.shop,
        size: 50,
        color: Colors.red,
      ),
    );
  }
}
