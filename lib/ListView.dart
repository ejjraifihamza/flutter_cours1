import 'package:flutter/material.dart';

/*
List View Take the whool height
*/
class ListView1 extends StatefulWidget {
  @override
  _ListView1State createState() => _ListView1State();
}

class _ListView1State extends State<ListView1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
      ),
      drawer: Drawer(),
      body: ListView(
        /* if you want to define height and width to ListView
         wrap it inside container.
        */
        // scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(15),
        // reverse: true,
        // physics type of scroll
        physics: BouncingScrollPhysics(),
        children: [
          Center(child: Text('ListView')),
          Container(
            margin: EdgeInsets.symmetric(vertical: 50),
            color: Colors.red,
            height: 300,
            child: Center(child: Text('Container One')),
          ),
          Container(
            height: 300,
            color: Colors.blue,
            child: ListView(
              physics: NeverScrollableScrollPhysics(),
              children: [
                Container(
                  color: Colors.yellow,
                  height: 50,
                ),
                Container(
                  color: Colors.pink,
                  height: 50,
                ),
                Container(
                  color: Colors.green,
                  height: 50,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 50),
            color: Colors.red,
            height: 300,
            child: Center(child: Text('Container Two')),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 50),
            color: Colors.red,
            height: 300,
            child: Center(child: Text('Container three')),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 50),
            color: Colors.red,
            height: 300,
            child: Center(child: Text('Container Four')),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 50),
            color: Colors.red,
            height: 300,
            child: Center(child: Text('Container Five')),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 50),
            color: Colors.red,
            height: 300,
            child: Center(child: Text('Container Six')),
          ),
        ],
      ),
    );
  }
}
