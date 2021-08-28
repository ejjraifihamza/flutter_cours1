import 'package:flutter/material.dart';

class ListviewBuilder1 extends StatefulWidget {
  @override
  _ListviewBuilderState1 createState() => _ListviewBuilderState1();
}

class _ListviewBuilderState1 extends State<ListviewBuilder1> {
  List mobile = [
    {'name': 's20 Ultra', 'screen': '6.4', 'cpu': '8 core'},
    {'name': 's20 Ultra', 'screen': '6.4', 'cpu': '8 core'},
    {'name': 's20 Ultra', 'screen': '6.4', 'cpu': '8 core'},
    {'name': 's20 Ultra', 'screen': '6.4', 'cpu': '8 core'},
    {'name': 's20 Ultra', 'screen': '6.4', 'cpu': '8 core'},
    {'name': 's20 Ultra', 'screen': '6.4', 'cpu': '8 core'},
    {'name': 's20 Ultra', 'screen': '6.4', 'cpu': '8 core'},
    {'name': 's20 Ultra', 'screen': '6.4', 'cpu': '8 core'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listview Builder'),
      ),
      drawer: Drawer(),
      body: ListView.builder(
          itemCount: mobile.length,
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, i) {
            return ListTile(
              title: Text('${mobile[i]['name']}'),
              subtitle: Text('${mobile[i]['screen']}'),
              trailing: Text('${mobile[i]['cpu']}'),
            );
          }),
    );
  }
}
