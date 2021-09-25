import 'package:flutter/material.dart';

class AlertDialog1 extends StatefulWidget {
  @override
  _AlertDialog1State createState() => _AlertDialog1State();
}

class _AlertDialog1State extends State<AlertDialog1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AlertDialog'),
      ),
      drawer: Drawer(),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text('Alert Msg'),
                  content: Text('You Click The Button'),
                  // backgroundColor: Colors.yellow,
                  // titlePadding: EdgeInsets.only(top: 20),
                  // contentPadding: EdgeInsets.only(top: 20),
                  // titleTextStyle: TextStyle(fontSize: 30),
                  // contentTextStyle: TextStyle(color: Colors.red),
                  actions: [
                    ElevatedButton(
                        onPressed: () {
                          print('OK');
                        },
                        child: Text('Ok')),
                    ElevatedButton(
                        onPressed: () {
                          print('Canceled');
                        },
                        child: Text('Cancel')),
                  ],
                );
              },
            );
          },
          child: Text('Show Alert'),
        ),
      ),
    );
  }
}
