import 'package:flutter/material.dart';

class TapBar1 extends StatefulWidget {
  @override
  _TapBar1State createState() => _TapBar1State();
}

class _TapBar1State extends State<TapBar1> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('TabBar'),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Container(
                  color: Colors.red[200],
                  child: Center(
                    child: Text('Page 1'),
                  ),
                ),
              ),
              Center(
                child: Container(
                  color: Colors.yellow[200],
                  child: Center(
                    child: Text('Page 1'),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
