// to reverse app widgets direction for example from english to arab
// use like this

import 'package:flutter/material.dart';

class Directionality1 extends StatefulWidget {
  const Directionality1({Key? key}) : super(key: key);

  @override
  _Directionality1State createState() => _Directionality1State();
}

class _Directionality1State extends State<Directionality1> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.ltr, child: Text('text'));
  }
}
