import 'package:flutter/material.dart';

// you can also do loop by this
class ListGenerate1 extends StatefulWidget {
  @override
  _ListGenerate1State createState() => _ListGenerate1State();
}

class _ListGenerate1State extends State<ListGenerate1> {
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
        title: Text('Grid Generate'),
      ),
      drawer: Drawer(),
      body: Container(
        child: GridView(
            physics: BouncingScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                // controll the height of the container
                childAspectRatio: 1),
            children: List.generate(mobile.length, (index) {
              return ListTile(
                tileColor: Colors.red[200],
                title: Text('${mobile[index]['name']}'),
                subtitle: Text('${mobile[index]['screen']}'),
              );
            })),
      ),
    );
  }
}
