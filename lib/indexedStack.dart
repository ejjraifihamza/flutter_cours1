import 'package:flutter/material.dart';

// IndexedStack it's like z-index its give you the control to choose
// what container or any widget to display, by define his index
// like this index : value,
class IndexedStack1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Indexed Stack'),
      ),
      drawer: Drawer(),
      body: Container(
        color: Colors.black87,
        width: 400,
        height: 400,
        child: IndexedStack(
          index: 2,
          children: [
            Container(
              color: Colors.red,
              child: Text('One'),
              width: 200,
              height: 200,
            ),
            Container(
              color: Colors.green,
              child: Text('Two'),
              width: 200,
              height: 200,
            ),
            Container(
              color: Colors.blue,
              child: Text('Three'),
              width: 200,
              height: 200,
            )
          ],
        ),
      ),
    );
  }
}
