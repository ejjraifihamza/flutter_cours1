import 'package:flutter/material.dart';

class DropDownButton1 extends StatefulWidget {
  @override
  DropDownButton1State createState() => DropDownButton1State();
}

class DropDownButton1State extends State<DropDownButton1> {
  // var should always be above @override
  var selectedCountry;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DropDownButton'),
      ),
      drawer: Drawer(),
      body: Center(
        child: Container(
          color: Colors.blue,
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              // style: TextStyle(backgroundColor: Colors.green),
              // dropdownColor: Colors.yellow,
              isExpanded: true,
              // underline: Divider(
              //   // height: 10,
              //   thickness: 0,
              //   color: Colors.blue,
              //   // indent: 10,
              //   // endIndent: 20,
              // ),
              hint: Text('Select Country'),
              items: ['USA', 'MAR', 'US', 'FR', 'EN']
                  .map((e) => DropdownMenuItem(
                        child: Text('Country $e'),
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
        ),
      ),
    );
  }
}
