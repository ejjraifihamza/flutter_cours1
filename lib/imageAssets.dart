// Widget (image)

import 'package:flutter/material.dart';

class ImageAssets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image Assets'),
        ),
        drawer: Drawer(),
        body: Image.asset(
          'assets/download.jpeg',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
