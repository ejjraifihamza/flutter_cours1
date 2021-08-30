import 'package:flutter/material.dart';

class Slider1 extends StatefulWidget {
  @override
  _Slider1State createState() => _Slider1State();
}

class _Slider1State extends State<Slider1> {
  var sliderValue = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Slider(
              min: 0,
              max: 100,
              activeColor: Colors.red,
              inactiveColor: Colors.grey,
              value: sliderValue,
              onChanged: (value) {
                setState(() {
                  sliderValue = value;
                  // print(value);
                });
              }),
        ),
      ),
    );
  }
}
