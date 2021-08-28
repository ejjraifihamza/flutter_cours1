import 'package:flutter/material.dart';

class GridViewBuilder1 extends StatefulWidget {
  @override
  _GridViewBuilder1State createState() => _GridViewBuilder1State();
}

class _GridViewBuilder1State extends State<GridViewBuilder1> {
  List mobile = [
    {'name': 's20 Ultra', 'screen': '6.4'},
    {'name': 's20 Ultra', 'screen': '6.4'},
    {'name': 's20 Ultra', 'screen': '6.4'},
    {'name': 's20 Ultra', 'screen': '6.4'},
    {'name': 's20 Ultra', 'screen': '6.4'},
    {'name': 's20 Ultra', 'screen': '6.4'},
    {'name': 's20 Ultra', 'screen': '6.4'},
    {'name': 's20 Ultra', 'screen': '6.4'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView Builder'),
      ),
      drawer: Drawer(),
      body: GridView.builder(
          itemCount: mobile.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            // you can controll the height by childAspectRatio
            // default is 1
          ),
          itemBuilder: (context, i) {
            return ListTile(
              tileColor: Colors.yellow,
              title: Text('${mobile[i]['name']}'),
              subtitle: Text('${mobile[i]['screen']}'),
            );
          }),
    );
  }
}
