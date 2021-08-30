import 'package:flutter/material.dart';

class PageThree1 extends StatefulWidget {
  const PageThree1({Key? key}) : super(key: key);

  @override
  _PageThree1State createState() => _PageThree1State();
}

class _PageThree1State extends State<PageThree1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Three'),
      ),
      body: Center(
        child: ElevatedButton(
            child: Text('GoBack'),
            onPressed: () {
              if (Navigator.of(context).canPop() == true) {
                Navigator.of(context).pop();
              }
            }),
      ),
    );
  }
}
