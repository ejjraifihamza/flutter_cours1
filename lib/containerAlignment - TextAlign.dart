import 'package:flutter/material.dart';

class ContainerAlignmentTextAlign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('TextAlign'),
          backgroundColor: Colors.green,
          shadowColor: Colors.red,
        ),
        drawer: Drawer(),
        body: Container(
          width: 200,
          height: 200,
          alignment: Alignment.center,
          // color: Colors.green[200],
          margin: EdgeInsets.all(100),
          decoration: BoxDecoration(color: Colors.green[100], boxShadow: [
            BoxShadow(
                // All BoxShadow property
                color: Colors.black87,
                offset: Offset(2, 5),
                blurRadius: 10,
                spreadRadius: 0)
          ]),
          // child: Text(
          //   'Alignment',
          //   style: TextStyle(fontSize: 26),
          // ),
          // You can put a container or image ..., inside a container
          child: Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: 50,
            color: Colors.red,
            child: Text(
              'Alignment',
              // textAlign: TextAlign.center,
              style: TextStyle(fontSize: 26),
            ),
          ),
        ),
      ),
    );
  }
}
