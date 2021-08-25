import 'package:flutter/material.dart';

class CheckBoxListTile1 extends StatefulWidget {
  @override
  _CheckBoxListTile1State createState() => _CheckBoxListTile1State();
}

class _CheckBoxListTile1State extends State<CheckBoxListTile1> {
  bool usa = false;
  bool mar = false;
  bool paris = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('CheckBoxListTile')),
      drawer: Drawer(),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Text(
              'Choose Country',
              style: TextStyle(fontSize: 30),
            ),
            CheckboxListTile(
                activeColor: Colors.red,
                contentPadding: EdgeInsets.all(10),
                title: Text('Country USA'),
                secondary: Icon(Icons.flag),
                isThreeLine: true,
                selected: usa,
                subtitle: Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text('required'),
                ),
                value: usa,
                onChanged: (val) {
                  setState(() {
                    usa = val!;
                    print(usa);
                  });
                }),
            CheckboxListTile(
                activeColor: Colors.red,
                contentPadding: EdgeInsets.all(10),
                title: Text('Country Mar'),
                secondary: Icon(Icons.flag),
                isThreeLine: true,
                selected: mar,
                subtitle: Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text('required'),
                ),
                value: mar,
                onChanged: (val) {
                  setState(() {
                    mar = val!;
                    print(mar);
                  });
                }),
            CheckboxListTile(
                activeColor: Colors.red,
                contentPadding: EdgeInsets.all(10),
                title: Text('Country Paris'),
                secondary: Icon(Icons.flag),
                isThreeLine: true,
                selected: paris,
                subtitle: Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text('required'),
                ),
                value: paris,
                onChanged: (val) {
                  setState(() {
                    paris = val!;
                    print(paris);
                  });
                })
          ],
        ),
      ),
    );
  }
}
