import 'package:flutter/material.dart';

class SwitchListTile1 extends StatefulWidget {
  @override
  _SwitchListTile1State createState() => _SwitchListTile1State();
}

class _SwitchListTile1State extends State<SwitchListTile1> {
  bool not = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('switchListTile'),
      ),
      drawer: Drawer(),
      body: Center(
        child: SwitchListTile(
            title: Text('Turn Notification'),
            subtitle: Text('Not Will show in home screen!'),
            // activeColor: Colors.red,
            // activeTrackColor: Colors.yellow,
            // inactiveTrackColor: Colors.black,
            // inactiveThumbColor: Colors.green,
            // dense: true,
            secondary: Icon(Icons.notifications_active),
            isThreeLine: true,
            value: not,
            onChanged: (val) {
              setState(() {
                not = val;
                print(not);
              });
            }),
      ),
    );
  }
}
