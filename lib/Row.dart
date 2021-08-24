/*
Row accept infinit widget (put widget inside children<list>)
*/
// MainAxisAlignment - CrossAxisAlignment - MainAxisSize
/*
to prevent column taking all height and take just less height then use 
MainAxisSize.min, and to controle the widget inside column use MainAxisAlignment,
CrossAxisAlignment for horizontal control
*/

import 'package:flutter/material.dart';

class Row1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row'),
      ),
      drawer: Drawer(),
      body: Container(
        color: Colors.red,
        height: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('hello world!'),
            Text('hello world!'),
            Text('hello world!'),
          ],
        ),
      ),
    );
  }
}
