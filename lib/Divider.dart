import 'package:flutter/material.dart';
// ! important Divider take whole width
// in case u use Row use VerticalDivider

class Divider1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Divider'),
      ),
      drawer: Drawer(),
      body: Column(
        children: [
          Text(
            'Text one',
            style: TextStyle(fontSize: 26),
          ),
          Divider(
            color: Colors.red,
            height: 100,
            thickness: 10,
            indent: 100,
            endIndent: 100,
          ),
          Text(
            'Text two',
            style: TextStyle(fontSize: 26),
          )
        ],
      ),
    );
  }
}
