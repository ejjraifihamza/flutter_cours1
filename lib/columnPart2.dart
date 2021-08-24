// MainAxisAlignment - CrossAxisAlignment - MainAxisSize
/*
to prevent column taking all height and take just less height then use 
MainAxisSize.min, and to controle the widget inside column use MainAxisAlignment,
CrossAxisAlignment for horizontal control
*/
// every Container take the width and height the widgit inside it
// Container should have one widget, but can take one Column and inside column
// put so many widget as children.

import 'package:flutter/material.dart';

class ColumnPart2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Column Part 2'),
      ),
      drawer: Drawer(),
      body: Container(
        // width: 100,
        color: Colors.redAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 100,
              color: Colors.black38,
              child: Text(
                'hello world!',
                textAlign: TextAlign.center,
              ),
            ),
            Text('hello world!'),
            Text('hello world!'),
            Text('hello world!')
          ],
          // mainAxisSize: MainAxisSize.min,
          // mainAxisAlignment: MainAxisAlignment.end,
          // children: [Text('hey')],
        ),
      ),
    );
  }
}
