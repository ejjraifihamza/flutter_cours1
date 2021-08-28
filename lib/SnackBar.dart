import 'package:flutter/material.dart';

// snakbar show in a litle time when we do som event
class SnackBar1 extends StatefulWidget {
  @override
  _SnackBar1State createState() => _SnackBar1State();
}

class _SnackBar1State extends State<SnackBar1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: scaffoldKey,
      appBar: AppBar(
        title: Text('SnackBar'),
      ),
      drawer: Drawer(),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            var snackbar = SnackBar(
              onVisible: () {
                print('ShowSnackBar');
              },
              action: SnackBarAction(
                  label: 'Close',
                  onPressed: () {
                    print('Close');
                  }),
              content: Text("hello"),
              duration: Duration(milliseconds: 3000),
              // backgroundColor: Colors.red,
              // to use margin you have to set behavior SnachBarBehavior.floating
              behavior: SnackBarBehavior.floating,
              width: 280.0,
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0, // Inner padding for SnackBar content.
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackbar);
          },
          child: Text('Show SnackBar'),
        ),
      ),
    );
  }
}
