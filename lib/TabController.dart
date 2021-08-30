import 'package:flutter/material.dart';

// initial state work only with statefulwidget
// initial state is like setstate but the first we call it when we
// enter in the page
class TabController1 extends StatefulWidget {
  @override
  _TabController1State createState() => _TabController1State();
}

class _TabController1State extends State<TabController1> {
  @override
  void initState() {
    print('hello');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          title: Text('DefaultTabController'),
          bottom: TabBar(
            automaticIndicatorColorAdjustment: true,
            isScrollable: true,
            indicatorColor: Colors.red,
            // indicatorWeight: 20,
            // labelColor: Colors.red,
            onTap: (i) {
              print(i);
            },
            tabs: [
              Tab(
                child: Text('Widget One'),
              ),
              Tab(
                child: Text('Widget Two'),
              ),
              Tab(
                child: Text('Widget Three'),
              ),
              Tab(
                child: Text('Widget Four'),
              ),
              Tab(
                child: Text('Widget Five'),
              ),
              Tab(
                child: Text('Widget Six'),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Container(
                color: Colors.red[200],
                child: Center(
                  child: Text('Page 1'),
                ),
              ),
            ),
            Center(
              child: Container(
                color: Colors.yellow[200],
                child: Center(
                  child: Text('Page 2'),
                ),
              ),
            ),
            Center(
              child: Container(
                color: Colors.green[200],
                child: Center(
                  child: Text('Page 3'),
                ),
              ),
            ),
            Center(
              child: Container(
                color: Colors.pink[200],
                child: Center(
                  child: Text('Page 4'),
                ),
              ),
            ),
            Center(
              child: Container(
                color: Colors.grey[500],
                child: Center(
                  child: Text('Page 5'),
                ),
              ),
            ),
            Center(
              child: Container(
                color: Colors.blue[200],
                child: Center(
                  child: Text('Page 6'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
