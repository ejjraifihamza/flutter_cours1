import 'package:flutter/material.dart';

class ListViewSeparator1 extends StatefulWidget {
  @override
  _ListViewSeparator1State createState() => _ListViewSeparator1State();
}

class _ListViewSeparator1State extends State<ListViewSeparator1> {
  List mobile = [
    {'name': 's20 Ultra', 'screen': '6.4', 'cpu': '8 core'},
    {'name': 's20 Ultra', 'screen': '6.4', 'cpu': '8 core'},
    {'name': 's20 Ultra', 'screen': '6.4', 'cpu': '8 core'},
    {'name': 's20 Ultra', 'screen': '6.4', 'cpu': '8 core'},
    {'name': 's20 Ultra', 'screen': '6.4', 'cpu': '8 core'},
    {'name': 's20 Ultra', 'screen': '6.4', 'cpu': '8 core'},
    {'name': 's20 Ultra', 'screen': '6.4', 'cpu': '8 core'},
    {'name': 's20 Ultra', 'screen': '6.4', 'cpu': '8 core'},
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
        title: Text('ListViewSeparator'),
      ),
      drawer: Drawer(),
      body: Container(
        child: ListView.separated(
            separatorBuilder: (context, i) {
              return Divider(
                color: Colors.grey,
                // height: 10,
                thickness: 2,
              );
            },
            itemCount: mobile.length,
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, i) {
              return ListTile(
                title: Text('${mobile[i]['name']}'),
                subtitle: Text('${mobile[i]['screen']}'),
                trailing: Text('${mobile[i]['cpu']}'),
              );
            }),
      ),
    );
  }
}
