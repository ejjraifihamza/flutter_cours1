import 'package:flutter/material.dart';

class Radio1 extends StatefulWidget {
  @override
  _Radio1State createState() => _Radio1State();
}

class _Radio1State extends State<Radio1> {
  var country;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Radio')),
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
                Radio(
                    value: 'usa',
                    groupValue: country,
                    onChanged: (val) {
                      setState(() {
                        country = val;
                        print(country);
                      });
                    })
              ],
            ),
            Row(
              children: [
                Text('MAR'),
                Radio(
                    value: 'mar',
                    groupValue: country,
                    onChanged: (val) {
                      setState(() {
                        country = val;
                        print(country);
                      });
                    })
              ],
            ),
            Row(
              children: [
                Text('BAR'),
                Radio(
                    value: 'bar',
                    groupValue: country,
                    onChanged: (val) {
                      setState(() {
                        country = val;
                        print(country);
                      });
                    })
              ],
            ),
          ],
        ),
      ),
    );
  }
}
