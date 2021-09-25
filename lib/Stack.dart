// Stack is master widget that accept childer [] so accept limits widget
//  Stack reverse column and row, it's put widget one above one
// Positioned make you controle what inside it and use only in Stack

import 'package:flutter/material.dart';

class Stack1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack'),
      ),
      drawer: Drawer(),
      body: Container(
        color: Colors.black87,
        width: 400,
        height: 400,
        child: Stack(
          // to make all container use this
          overflow: Overflow.visible,
          alignment: Alignment.topRight,
          fit: StackFit.expand,
          children: [
            Container(
              color: Colors.red,
              width: 200,
              height: 200,
            ),
            Container(
              color: Colors.green,
              width: 100,
              height: 100,
            )
          ],
          // children: [
          //   Positioned(
          //       /*
          //       bottom, top, left, right, width, height
          //     */
          //       top: 300,
          //       width: 200,
          //       height: 200,
          //       child: Container(
          //         color: Colors.red,
          //         child: Text('hello world!'),
          //       ))
          // ],
        ),
      ),
    );
  }
}
