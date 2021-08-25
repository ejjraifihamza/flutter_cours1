import 'package:flutter/material.dart';

//  checkvox change the bool value from false to true.
class CheckBox1 extends StatefulWidget {
  @override
  _CheckBox1State createState() => _CheckBox1State();
}

class _CheckBox1State extends State<CheckBox1> {
  bool usa = false;
  bool maroc = false;
  bool barcelona = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckBox'),
      ),
      drawer: Drawer(),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Text(
              'Choose Country',
              style: TextStyle(fontSize: 30),
            ),
            Row(
              children: [
                Text('USA'),
                Checkbox(
                    checkColor: Colors.red,
                    activeColor: Colors.yellow,
                    value: usa,
                    onChanged: (val) {
                      setState(() {
                        // without setState you wont see the box's change.
                        usa = val!;
                        print(val);
                      });
                    })
              ],
            ),
            Row(
              children: [
                Text('Maroc'),
                Checkbox(
                    value: maroc,
                    onChanged: (val) {
                      setState(() {
                        maroc = val!;
                        print(val);
                      });
                    })
              ],
            ),
            Row(
              children: [
                Text('Barcelona'),
                Checkbox(
                    value: barcelona,
                    onChanged: (val) {
                      setState(() {
                        barcelona = val!;
                        print(barcelona);
                      });
                    })
              ],
            )
          ],
        ),
      ),
    );
  }
}
