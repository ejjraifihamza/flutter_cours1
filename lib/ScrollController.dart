import 'package:flutter/material.dart';

class ScrollController1 extends StatefulWidget {
  @override
  _ScrollController1State createState() => _ScrollController1State();
}

class _ScrollController1State extends State<ScrollController1> {
  late ScrollController scrollController;

  @override
  void initState() {
    scrollController = new ScrollController();
    scrollController.addListener(() {
      print(scrollController.offset);
      print('Min Scroll : ${scrollController.position.minScrollExtent}');
      print('Max Scroll : ${scrollController.position.maxScrollExtent}');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scroll Controller'),
      ),
      body: ListView(
        controller: scrollController,
        children: [
          Container(
              // margin: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
              child: ElevatedButton(
            onPressed: () {
              scrollController
                  .jumpTo(scrollController.position.maxScrollExtent);
            },
            child: Text('Jump To Bottom'),
          )),
          ...List.generate(
              20,
              (index) => Center(
                    child: Container(
                      height: 300,
                      margin:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                      color: index.isEven ? Colors.red[300] : Colors.pink[300],
                      child: Center(child: Text('Container $index')),
                    ),
                  )),
          Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
              child: ElevatedButton(
                onPressed: () {
                  scrollController.animateTo(
                      scrollController.position.minScrollExtent,
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeIn);
                },
                child: Text('Jump to Top'),
              )),
        ],
      ),
    );
  }
}
