import 'package:flutter/material.dart';

class BottomNavigationBar1 extends StatefulWidget {
  @override
  _BottomNavigationBar1State createState() => _BottomNavigationBar1State();
}

class _BottomNavigationBar1State extends State<BottomNavigationBar1> {
  var selectedWidget = 0;
  List pages = [PagesOne(), PagesTwo(), PagesThree()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BottomNavigationBar'),
      ),
      drawer: Drawer(),
      body: pages.elementAt(selectedWidget),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 20,
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.black87,
        currentIndex: selectedWidget,
        onTap: (i) {
          setState(() {
            selectedWidget = i;
          });
        },
        backgroundColor: Colors.red,
        items: [
          BottomNavigationBarItem(
            label: 'Widget One',
            icon: Icon(Icons.add),
          ),
          BottomNavigationBarItem(
            label: 'Widget Two',
            icon: Icon(Icons.add),
          ),
          BottomNavigationBarItem(
            label: 'Widget Three',
            icon: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}

class PagesOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Page One'),
    );
  }
}

class PagesTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Page Two'),
    );
  }
}

class PagesThree extends StatefulWidget {
  @override
  _PagesThreeState createState() => _PagesThreeState();
}

class _PagesThreeState extends State<PagesThree> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Page Three'),
    );
  }
}
