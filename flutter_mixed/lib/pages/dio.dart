import 'package:flutter/material.dart';
import '../services/service.dart';
import 'dart:convert';

class DioPage extends StatefulWidget {
  @override
  _DioPageState createState() => _DioPageState();
}

class _DioPageState extends State<DioPage> {

  String _result = '';

  void _request() async {
    var url = 'https://api.apiopen.top/getWangYiNews';

    await request(url).then((value){
      var data = json.decode(value.toString());

      print(data.toString());

      setState(() {
        _result = data.toString();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dio'),
      ),
      body: Column(
        children: <Widget>[
          FlatButton(
            child: Text('请求'),
            onPressed: (){
              setState(() {
                _request();
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