import 'package:flutter/material.dart';

class PageTwo1 extends StatefulWidget {
  const PageTwo1({Key? key}) : super(key: key);

  @override
  _PageTwo1State createState() => _PageTwo1State();
}

class _PageTwo1State extends State<PageTwo1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Two'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Go Back'),
          onPressed: () {
            if (Navigator.of(context).canPop() == true) {
              Navigator.of(context).pop();
            }
          },
        ),
      ),
    );
  }
}
