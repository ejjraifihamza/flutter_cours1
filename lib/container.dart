import 'package:flutter/material.dart';

class LearnContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Container'),
        ),
        drawer: Drawer(),
        body: Container(
          width: double.infinity,
          // width: 200,
          // height: 200,
          color: null,
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.amber,
              image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage('download.jpeg'),
                  repeat: ImageRepeat.noRepeat)
              // border: Border.all(
              //   // this class have pre defined values, check the Border class
              //   color: Colors.red,
              //   width: 5,
              //   style: BorderStyle.solid,
              // ),
              // border: Border(
              //   // you can add as luch direction you need
              //   // the border take space from container, same for padding***
              //   left: BorderSide(
              //       style: BorderStyle.solid, color: Colors.indigo, width: 2),
              //   right: BorderSide(
              //       style: BorderStyle.solid, color: Colors.red, width: 2),
              // ),
              // borderRadius: BorderRadius.only(
              //     topRight: Radius.circular(10), topLeft: Radius.circular(10)),
              ),
          child: Text(
            'Hello from container',
            style: TextStyle(
                color: Colors.black,
                letterSpacing: 2,
                wordSpacing: 30,
                shadows: [
                  Shadow(
                      color: Colors.red, offset: Offset(5, 10), blurRadius: 10)
                ]),
          ),
        ),
      ),
    );
  }
}


/* pubspec.yaml
1 - Add Package
2 - Folder for image and file
3 - Add Fonts
*/
