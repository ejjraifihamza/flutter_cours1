import 'package:flutter/material.dart';

class GridViewCount1 extends StatefulWidget {
  @override
  _GridViewCount1State createState() => _GridViewCount1State();
}

class _GridViewCount1State extends State<GridViewCount1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView Count'),
      ),
      drawer: Drawer(),
      body: Container(
        padding: EdgeInsets.all(10),
        child: GridView.count(
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          crossAxisCount: 2,
          children: [
            Container(
              color: Colors.red[200],
              child: Text('Container One'),
            ),
            Container(
              color: Colors.red[200],
              child: Text('Container One'),
            ),
            Container(
              color: Colors.red[200],
              child: Text('Container One'),
            ),
            Container(
              color: Colors.red[200],
              child: Text('Container One'),
            ),
            Container(
              color: Colors.red[200],
              child: Text('Container One'),
            ),
            Container(
              color: Colors.red[200],
              child: Text('Container One'),
            ),
          ],
        ),
      ),
    );
  }
}
