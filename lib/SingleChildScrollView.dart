import 'package:flutter/material.dart';

class SingleChildScrollView1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Single Child Scroll View'),
      ),
      drawer: Drawer(),
      body: Container(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              color: Colors.red,
              width: double.infinity,
              height: 100,
            ),
            Container(
              margin: EdgeInsets.all(10),
              color: Colors.red,
              width: double.infinity,
              height: 100,
            ),
            Container(
              margin: EdgeInsets.all(10),
              color: Colors.red,
              width: double.infinity,
              height: 100,
            ),
            Container(
              margin: EdgeInsets.all(10),
              color: Colors.red,
              width: double.infinity,
              height: 100,
            ),
            Container(
              margin: EdgeInsets.all(10),
              color: Colors.red,
              width: double.infinity,
              height: 100,
            ),
            Container(
              margin: EdgeInsets.all(10),
              color: Colors.red,
              width: double.infinity,
              height: 100,
            ),
            Container(
              margin: EdgeInsets.all(10),
              color: Colors.red,
              width: double.infinity,
              height: 100,
            ),
            Container(
              margin: EdgeInsets.all(10),
              color: Colors.red,
              width: double.infinity,
              height: 100,
            ),
          ],
        ),
      )),
    );
  }
}
