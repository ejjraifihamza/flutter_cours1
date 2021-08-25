import 'package:flutter/material.dart';

// this property declared outside the body

class FloatingActionButton1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Floating Action Button'),
      ),
      drawer: Drawer(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.yellow,
        splashColor: Colors.red,
        onPressed: () {
          print('Pressed');
        },
        child: Icon(Icons.add),
      ),
      body: ListView(
        children: [
          Container(
            height: 100,
            child: Center(
              child: Text('One'),
            ),
            color: Colors.red,
            margin: EdgeInsets.only(top: 20, bottom: 20),
          ),
          Container(
            height: 100,
            child: Center(
              child: Text('One'),
            ),
            color: Colors.green,
            margin: EdgeInsets.only(top: 20, bottom: 20),
          ),
          Container(
            height: 100,
            child: Center(
              child: Text('One'),
            ),
            color: Colors.yellow,
            margin: EdgeInsets.only(top: 20, bottom: 20),
          ),
          Container(
            height: 100,
            child: Center(
              child: Text('One'),
            ),
            color: Colors.red,
            margin: EdgeInsets.only(top: 20, bottom: 20),
          ),
          Container(
            height: 100,
            child: Center(
              child: Text('One'),
            ),
            color: Colors.red,
            margin: EdgeInsets.only(top: 20, bottom: 20),
          ),
          Container(
            height: 100,
            child: Center(
              child: Text('One'),
            ),
            color: Colors.red,
            margin: EdgeInsets.only(top: 20, bottom: 20),
          ),
          Container(
            height: 100,
            child: Center(
              child: Text('One'),
            ),
            color: Colors.red,
            margin: EdgeInsets.only(top: 20, bottom: 20),
          ),
        ],
      ),
    );
  }
}
