/*
Widget :
1 - Specific like Text, Image.asset Image.network and etc
2 - Child : Card, Container, SizdBox, and etc
3 - Children : Column, Row, Stack, ListView, GridView
*/

// inside children list you can use infinite widget.
// Column Widget center all other widget inside it verticaly

import 'package:flutter/material.dart';

class ColumnPart1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Column Part 1'),
      ),
      drawer: Drawer(),
      body: Column(
        children: [
          Text('Hello World!'),
          Text('Hello World 2!'),
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.red,
            child: Text('Hello World 3!'),
          ),
          Image.asset('assets/download.jpeg'),
          Container(
            width: 100,
            height: 100,
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}
