import 'package:flutter/material.dart';

//  also you can use IconButton()
class ElevatedButtonIcon1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Elevated Button Icon'),
      ),
      drawer: Drawer(),
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () {
            print('Pressed');
          },
          icon: Icon(Icons.star),
          label: Text(
            'Press',
            style: TextStyle(fontSize: 26),
          ),
          style: ElevatedButton.styleFrom(
              primary: Colors.red,
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              elevation: 50,
              shadowColor: Colors.red),
        ),
      ),
    );
  }
}
