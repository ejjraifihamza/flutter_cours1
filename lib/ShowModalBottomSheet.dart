import 'package:flutter/material.dart';

class ShowModalBottomSheet1 extends StatefulWidget {
  @override
  _ShowModalBottomSheet1State createState() => _ShowModalBottomSheet1State();
}

class _ShowModalBottomSheet1State extends State<ShowModalBottomSheet1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Show Modal Bottom Sheet'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Show Modal Bottom Sheet'),
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Container(
                    child: Center(child: Text('hello')),
                  );
                });
          },
        ),
      ),
    );
  }
}
