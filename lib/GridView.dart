import 'package:flutter/material.dart';

class GridView1 extends StatefulWidget {
  @override
  _GridView1State createState() => _GridView1State();
}

class _GridView1State extends State<GridView1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View'),
      ),
      drawer: Drawer(),
      body: Container(
        child: GridView(
          physics: BouncingScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              // controll the height of the container
              childAspectRatio: 1),
          children: [
            Container(
              color: Colors.red[200],
              height: 200,
              child: Text('Container One'),
            ),
            Container(
              color: Colors.red[200],
              height: 200,
              child: Text('Container One'),
            ),
            Container(
              color: Colors.red[200],
              height: 200,
              child: Text('Container One'),
            ),
            Container(
              color: Colors.red[200],
              height: 200,
              child: Text('Container One'),
            ),
            Container(
              color: Colors.red[200],
              height: 200,
              child: Text('Container One'),
            ),
            Container(
              color: Colors.red[200],
              height: 200,
              child: Text('Container One'),
            ),
            Container(
              color: Colors.red[200],
              height: 200,
              child: Text('Container One'),
            ),
            Container(
              color: Colors.red[200],
              height: 200,
              child: Text('Container One'),
            ),
            Container(
              color: Colors.red[200],
              height: 200,
              child: Text('Container One'),
            ),
            Container(
              color: Colors.red[200],
              height: 200,
              child: Text('Container One'),
            ),
            Container(
              color: Colors.red[200],
              height: 200,
              child: Text('Container One'),
            ),
            Container(
              color: Colors.red[200],
              height: 200,
              child: Text('Container One'),
            ),
            Container(
              color: Colors.red[200],
              height: 200,
              child: Text('Container One'),
            ),
          ],
        ),
      ),
    );
  }
}
