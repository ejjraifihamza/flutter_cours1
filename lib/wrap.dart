import 'package:flutter/material.dart';

/*
so if you put more container in Row() than screen can hold
error will occure, so you can fix this by replace Row() with Wrap()
then the containers that not have space will return to the next line
the same thing for column()
but define the direction to Axis.vertical
*/
class Wrap1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wrap'),
      ),
      drawer: Drawer(),
      body: Container(
        child: Wrap(
          direction: Axis.vertical,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              color: Colors.red,
              width: 90,
              height: 100,
            ),
            Container(
              margin: EdgeInsets.all(10),
              color: Colors.red,
              width: 90,
              height: 100,
            ),
            Container(
              margin: EdgeInsets.all(10),
              color: Colors.red,
              width: 90,
              height: 100,
            ),
            Container(
              margin: EdgeInsets.all(10),
              color: Colors.red,
              width: 90,
              height: 100,
            ),
            Container(
              margin: EdgeInsets.all(10),
              color: Colors.red,
              width: 90,
              height: 100,
            ),
            Container(
              margin: EdgeInsets.all(10),
              color: Colors.red,
              width: 90,
              height: 100,
            ),
            Container(
              margin: EdgeInsets.all(10),
              color: Colors.red,
              width: 90,
              height: 100,
            ),
            Container(
              margin: EdgeInsets.all(10),
              color: Colors.red,
              width: 90,
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
