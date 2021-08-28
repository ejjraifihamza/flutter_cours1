import 'package:flutter/material.dart';

class ListTile1 extends StatefulWidget {
  const ListTile1({Key? key}) : super(key: key);

  @override
  _ListTile1State createState() => _ListTile1State();
}

class _ListTile1State extends State<ListTile1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListTile'),
      ),
      drawer: Drawer(),
      body: Container(
        child: ListTile(
          tileColor: Colors.black26,
          title: Text('S10 Ultra'),
          subtitle: Text('Samsung'),
          leading: Icon(Icons.mobile_friendly),
          trailing: Text('Price 200\$'),
          onTap: () {
            print('Tap');
          },
          onLongPress: () {
            print('Long Tab');
          },
        ),
      ),
    );
  }
}
