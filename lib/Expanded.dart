// Expanded use to expande container to take full width
// flex in expanded widget
import 'package:flutter/material.dart';

class Expanded1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expanded'),
      ),
      drawer: Drawer(),
      // body: Row(
      //   children: [
      //     Expanded(
      //       flex: 3,
      //       child: Container(
      //         child: Text('Container 1'),
      //         color: Colors.red,
      //       ),
      //     ),
      //     Expanded(
      //       flex: 2,
      //       child: Container(
      //         child: Text('Container 2'),
      //         color: Colors.green,
      //       ),
      //     ),
      //     Expanded(
      //       child: Container(
      //         child: Text('Container 3'),
      //         color: Colors.blue,
      //       ),
      //     )
      //   ],
      // ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              child: Text(
                'container 1',
              ),
              color: Colors.red,
              width: double.infinity,
            ),
          ),
          Expanded(
            child: Container(
              child: Text(
                'container 2',
              ),
              color: Colors.green,
              width: double.infinity,
            ),
          ),
          Expanded(
            child: Container(
              child: Text(
                'container 3',
              ),
              color: Colors.blue,
              width: double.infinity,
            ),
          )
        ],
      ),
    );
  }
}
