import 'package:flutter/material.dart';

class ExampleOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                alignment: Alignment.center,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(color: Colors.black87, width: 2)),
                child: Text(
                  'Strawberry Pavlova Recipe',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                alignment: Alignment.center,
                child: Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen bookhas survived not only five centuries',
                  style: TextStyle(fontSize: 18, height: 1.5),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.star, color: Colors.yellow),
                              Icon(Icons.star, color: Colors.yellow),
                              Icon(Icons.star, color: Colors.yellow),
                              Icon(Icons.star),
                              Icon(Icons.star),
                            ],
                          ),
                          Text(
                            '17 Reviews',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Icon(Icons.restaurant,
                                  color: Colors.green, size: 40),
                              Text('Food'),
                              Text('2 - 4')
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.restaurant,
                                  color: Colors.green, size: 40),
                              Text('Food'),
                              Text('2 - 4')
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.restaurant,
                                  color: Colors.green, size: 40),
                              Text('Food'),
                              Text('2 - 4')
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.black87))),
            ],
          ),
        ));
  }
}
