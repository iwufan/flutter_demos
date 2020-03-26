import 'package:flutter/material.dart';
import 'package:string_validator/string_validator.dart';

class StringValidator extends StatefulWidget {
  @override
  _StringValidatorState createState() => _StringValidatorState();
}

class _StringValidatorState extends State<StringValidator> {

  String _result = '';

  void _check() {
    if (isNumeric('123')) {
      _result = '123是数字\n';
    }
    if (isEmail('123@126.c')) {
      _result += '123@126.c不是邮箱\n';
    }
    if (!equals('tom', 'Tom')) {
      _result += 'tom和Tom不相等\n';
    }
    if (contains('believe', 'lie')) {
      _result += 'believe里面有lie\n';
    }
    if (!isNull('jerry')) {
      _result += 'jerry不是一个空字符串\n';
    }
    if (isJson("{'key': '1234'}")) {
      _result += "{'key': '1234'}是个json字符串\n";
    }
    if (isURL('http://wwww.flutter.com')) {
      _result += 'http://wwww.flutter.com是个url\n';
    }
    if (isDate('20190204')) {
      _result += "20190204是个日期\n";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StringValidator'),
      ),
      body: Column(
        children: <Widget>[
          FlatButton(
            child: Text('验证'),
            onPressed: (){
              setState(() {
                _check();
              });
            },
          ),
          Center(
            child: Text(
              "$_result",
              style: TextStyle(
                fontSize: 15,
                color: Colors.red,
                backgroundColor: Colors.lightGreen,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
