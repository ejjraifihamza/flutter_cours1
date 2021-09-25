import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HttpAndApi1 extends StatefulWidget {
  const HttpAndApi1({Key? key}) : super(key: key);

  @override
  _HttpAndApi1State createState() => _HttpAndApi1State();
}

class _HttpAndApi1State extends State<HttpAndApi1> {
  List posts = [];
  Future getPost() async {
    var url = 'https://jsonplaceholder.typicode.com/posts';
    var response = await http.get(Uri.parse(url));
    print(response.body);
    var responseBody = jsonDecode(response.body);
    print('##################################################');
    print('response body is : $responseBody');
    print(responseBody[1]['id']);
    setState(() {
      posts.addAll(responseBody);
    });
    // print(posts[1]['id']);
    print(posts.isEmpty);
  }

  @override
  void initState() {
    getPost();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Http And Api'),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return Divider(
            color: Colors.grey,
            thickness: 2,
          );
        },
        itemCount: posts.length,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('${posts[index]['title']}'),
            subtitle: Text('${posts[index]['body']}'),
          );
        },
      ),
    );
  }
}
