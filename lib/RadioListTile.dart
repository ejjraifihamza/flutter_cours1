import 'package:flutter/material.dart';

class RadioListTile1 extends StatefulWidget {
  @override
  _RadioListTile1State createState() => _RadioListTile1State();
}

class _RadioListTile1State extends State<RadioListTile1> {
  var country;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RadioListTile'),
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
            Column(
              children: [
                RadioListTile(
                    value: 'USA',
                    groupValue: country,
                    onChanged: (val) {
                      setState(() {
                        country = val;
                        print(country);
                      });
                    }),
                RadioListTile(
                    activeColor: Colors.red,
                    title: Text('MAR'),
                    subtitle: Text('Country'),
                    selected: country == 'MAR' ? true : false,
                    secondary: Icon(Icons.flag),
                    controlAffinity: ListTileControlAffinity.trailing,
                    value: 'MAR',
                    groupValue: country,
                    onChanged: (val) {
                      setState(() {
                        country = val;
                        print(country);
                      });
                    }),
                RadioListTile(
                    value: 'PARIS',
                    groupValue: country,
                    onChanged: (val) {
                      setState(() {
                        country = val;
                        print(country);
                      });
                    }),
              ],
            )
          ],
        ),
      ),
    );
  }
}
