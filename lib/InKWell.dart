import 'package:flutter/material.dart';

class InkWell1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('InkWell'),
      ),
      drawer: Drawer(),
      body: Center(
        child: SizedBox(
          child: InkWell(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              color: Colors.red,
              child: Text(
                'Press',
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            onTap: () {
              print('Pressed');
            },
            hoverColor: Colors.blue,
          ),
        ),
      ),
    );
  }
}
