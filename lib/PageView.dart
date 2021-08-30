import 'package:flutter/material.dart';

class PageView1 extends StatefulWidget {
  @override
  _PageView1State createState() => _PageView1State();
}

class _PageView1State extends State<PageView1> {
  late PageController pageControle;

  @override
  void initState() {
    pageControle = new PageController(
      initialPage: 0,
      viewportFraction: 0.7,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PageView'),
      ),
      drawer: Drawer(),
      body: Column(
        children: [
          Container(
            height: 600,
            color: Colors.black45,
            child: PageView(
              // scrollDirection: Axis.vertical,
              controller: pageControle,
              onPageChanged: (index) {
                print(index);
              },
              children: [
                Container(
                  color: Colors.red[200],
                  child: Center(
                    child: Text('Page One'),
                  ),
                ),
                Container(
                  color: Colors.yellow[200],
                  child: Center(
                    child: Text('Page Two'),
                  ),
                ),
                Container(
                  color: Colors.green[200],
                  child: Center(
                    child: Text('Page Three'),
                  ),
                ),
                Container(
                  color: Colors.pink[200],
                  child: Center(
                    child: Text('Page Four'),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: ElevatedButton(
                  onPressed: () {
                    // pageControle.animateToPage(2,
                    //     duration: Duration(milliseconds: 300),
                    //     curve: Curves.easeIn);
                    pageControle.previousPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.bounceOut);
                  },
                  child: Icon(Icons.preview),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: ElevatedButton(
                  onPressed: () {
                    // pageControle.animateToPage(2,
                    //     duration: Duration(milliseconds: 300),
                    //     curve: Curves.easeIn);
                    pageControle.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.bounceOut);
                  },
                  child: Icon(Icons.skip_next),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
