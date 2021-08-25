import 'package:flutter/material.dart';

class Switch1 extends StatefulWidget {
  const Switch1({Key? key}) : super(key: key);

  @override
  _Switch1State createState() => _Switch1State();
}

class _Switch1State extends State<Switch1> {
  bool not = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch'),
      ),
      drawer: Drawer(),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('هل تريد تشغيل الاشعارات'),
            Switch(
                activeColor: Colors.red,
                activeTrackColor: Colors.yellow,
                inactiveTrackColor: Colors.black,
                inactiveThumbColor: Colors.green,
                value: not,
                onChanged: (val) {
                  setState(() {
                    not = val;
                    print(not);
                  });
                })
          ],
        ),
      ),
    );
  }
}
