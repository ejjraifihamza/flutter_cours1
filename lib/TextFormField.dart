import 'package:flutter/material.dart';

class TextFormField1 extends StatefulWidget {
  @override
  _TextFormField1State createState() => _TextFormField1State();
}

class _TextFormField1State extends State<TextFormField1> {
  TextEditingController email = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextFormField'),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    // hintText: 'Email',
                    // hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
                    prefixIcon: Icon(Icons.email),
                    // suffixIcon: Icon(Icons.email),
                    labelText: 'Email',
                    // labelStyle: TextStyle(),
                    // filled: true,
                    // fillColor: Colors.blue[100],
                    // enabledBorder: UnderlineInputBorder(
                    //     borderSide: BorderSide(
                    //   color: Colors.blue,
                    //   width: 3,
                    // )),
                    // enabledBorder: OutlineInputBorder(
                    //     borderSide: BorderSide(
                    //   color: Colors.blue,
                    //   width: 3,
                    // )),
                    // focusedBorder: OutlineInputBorder(
                    //     borderRadius: BorderRadius.circular(15),
                    //     borderSide: BorderSide(
                    //       color: Colors.blue,
                    //       width: 3,
                    //     )),
                    // icon: Icon(Icons.email),
                  ),
                  // cursorColor: Colors.black87,
                  // cursorHeight: 30,
                  // initialValue: 'user info',
                  // keyboardType: TextInputType.emailAddress,
                  // maxLength: 20,
                  // maxLines: 2,
                  // minLines: 1,
                  // obscureText: true,
                  //   style:
                  //       TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                  // textInputAction: TextInputAction.done,
                  // textAlign: TextAlign.center,
                  controller: email,
                  onEditingComplete: () {
                    print('Complete');
                  },
                ),
                // ElevatedButton(
                //     onPressed: () {
                //       print(email.text);
                //     },
                //     child: Text('Send')),
              ],
            ),
          )
        ],
      ),
    );
  }
}
