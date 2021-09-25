import 'package:flutter/material.dart';

class TextFormFieldAndForm extends StatefulWidget {
  @override
  _TextFormFieldAndFormState createState() => _TextFormFieldAndFormState();
}

class _TextFormFieldAndFormState extends State<TextFormFieldAndForm> {
  var email;
  var phone;

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> emailError = new GlobalKey<FormState>();

    send() {
      var formData = emailError.currentState;
      if (formData!.validate()) {
        formData.save();
        print('$email');
        print('$phone');
      } else {
        print('Not Valid');
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('TextFormField'),
      ),
      body: Form(
        key: emailError,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                children: [
                  TextFormField(
                    onSaved: (input) {
                      email = input;
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (field) {
                      if (field!.length < 5 ||
                          field.length > 10 ||
                          !field.contains('@')) {
                        return 'error';
                      } else {
                        return null;
                      }
                    },
                  ),
                  TextFormField(
                    onSaved: (input) {
                      phone = input;
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (field) {
                      if (field!.length < 5 || field.length > 10) {
                        return 'error';
                      } else {
                        return null;
                      }
                    },
                  ),
                  ElevatedButton(onPressed: send, child: Text('Send')),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
