import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HttpAndApi1 extends StatefulWidget {
  const HttpAndApi1({Key? key}) : super(key: key);

  @override
  _HttpAndApi1State createState() => _HttpAndApi1State();
}

class _HttpAndApi1State extends State<HttpAndApi1> {
  Future getPost() async {
    var url = 'https://jsonplaceholder.typicode.com/posts';
    var response = await http.get(Uri.parse(url));
    var responseBody = jsonDecode(response.body);
    return responseBody;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Http And Api'),
        ),
        body: FutureBuilder(
            future: getPost(),
            builder: (context, snapshot) {
              return ListView.builder(
                  itemCount: snapshot.data.toString().length,
                  itemBuilder: (context, index) {
                    return Container(
                        // child: Text('${snapshot.data.[index]['title']}'),
                        );
                  });
            }));
  }
}
