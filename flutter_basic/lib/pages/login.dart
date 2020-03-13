import 'package:flutter/material.dart';
import 'package:string_validator/string_validator.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  GlobalKey<FormState> loginKey = GlobalKey<FormState>();

  String userName;
  String password;

  void login() {

    var loginForm = loginKey.currentState;

    if (loginForm.validate()) {
      loginForm.save();
      print('userName:' + userName + ' password:' + password);
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Form Example'),
        ),
        body: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: loginKey,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Please input username',
                      ),
                      validator: (value){
                        return isNumeric(value) ? 'Please input string' : null;
                      },
                      onSaved: (value) {
                        userName = value;
                      },
                      onFieldSubmitted: (value){
                       print('user name field submitted....');
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Please input password',
                      ),
                      obscureText: true,
                      validator: (value){
                        return value.length < 6 ? 'Password is too short.' : null;
                      },
                      onSaved: (value){
                        password = value;
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 340.0,
              height: 42.0,
              child: RaisedButton(
                onPressed: login,
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}