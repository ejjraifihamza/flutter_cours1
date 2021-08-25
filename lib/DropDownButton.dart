import 'package:flutter/material.dart';

class DropDownButton1 extends StatefulWidget {
  @override
  DropDownButton1State createState() => DropDownButton1State();
}

class DropDownButton1State extends State<DropDownButton1> {
  // var should always be above @override
  var selectedCountry = 'USA';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DropDownButton'),
      ),
      drawer: Drawer(),
      body: Center(
        child: DropdownButton(
          items: ['USA', 'MAR', 'US', 'FR', 'EN']
              .map((e) => DropdownMenuItem(
                    child: Text('$e'),
                    value: e,
                  ))
              .toList(),
          onChanged: (val) {
            setState(() {
              selectedCountry = '$val';
              // print('$selectedCountry');
            });
          },
          value: selectedCountry,
        ),
      ),
    );
  }
}
