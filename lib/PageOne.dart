import 'package:flutter/material.dart';

/*
pushReplacementNamed() take you to the page that you want,
but does not take you back to the previews page bcz this function
forget the route.
*/

class PageOne1 extends StatefulWidget {
  const PageOne1({Key? key}) : super(key: key);

  @override
  _PageOne1State createState() => _PageOne1State();
}

class _PageOne1State extends State<PageOne1> {
  var snackbar = SnackBar(content: Text('You Can\'t Go Back'));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page One'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: ElevatedButton(
              child: Text('Go To Page Two'),
              onPressed: () {
                // Navigator.of(context)
                //     .push(MaterialPageRoute(builder: (context) {
                //   return PageTwo1();
                // }));
                Navigator.of(context).pushNamed('pageTwo');
              },
            ),
          ),
          Center(
            child: ElevatedButton(
              child: Text('Go Back'),
              onPressed: () {
                if (Navigator.of(context).canPop() == true) {
                  Navigator.of(context).pop();
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                }
              },
            ),
          ),
          Center(
            child: ElevatedButton(
              child: Text('Go To Page Three'),
              onPressed: () {
                // Navigator.of(context)
                //     .push(MaterialPageRoute(builder: (context) {
                //   return PageThree1();
                // }));
                Navigator.of(context).pushNamed('pageThree');
              },
            ),
          ),
        ],
      ),
    );
  }
}
