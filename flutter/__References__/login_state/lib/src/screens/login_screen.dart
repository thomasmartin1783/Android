import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  Widget build(context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.only(left: 20.0, right: 20.0),
      child: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            emailField(),
            passwordField(),
            submitButton(),
          ],
        ),
      ),
    );
  }
}

Widget emailField() {
  return TextFormField(
    keyboardType: TextInputType.emailAddress,
    decoration: InputDecoration(
      labelText: 'Email Address',
      hintText: 'email@example.com',
    ),
  );
}

Widget passwordField() {
  return TextFormField(
    obscureText: true,
    decoration: InputDecoration(
      labelText: 'Enter Password',
      hintText: 'Password',
    ),
  );
}

Widget submitButton() {
  return ElevatedButton(
    onPressed: () {},
    child: Text('Submit'),
  );
}
