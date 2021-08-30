import 'package:flutter/material.dart';

class PageViewBuilder1 extends StatefulWidget {
  @override
  _PageViewBuilder1State createState() => _PageViewBuilder1State();
}

class _PageViewBuilder1State extends State<PageViewBuilder1> {
  late PageController pageControle;

  @override
  void initState() {
    pageControle = new PageController(
      initialPage: 0,
      viewportFraction: 0.7,
    );
    super.initState();
  }

  List pages = [
    {'name': 'Page One', 'color': 'Colors.red'},
    {'name': 'Page Two', 'color': 'Colors.green'},
    {'name': 'Page Three', 'color': 'Colors.yellow'},
    {'name': 'Page Four', 'color': 'Colors.pink'}
  ];

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
            child: PageView.builder(
              itemCount: pages.length,
              // scrollDirection: Axis.vertical,
              controller: pageControle,
              itemBuilder: (context, index) => Container(
                // color: Color(pages[index]['color']),
                color: Colors.red[200],
                child: Center(
                  child: Text(pages[index]['name']),
                ),
              ),
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
