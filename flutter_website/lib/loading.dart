import 'package:flutter/material.dart';
import 'dart:async';
import 'router/application.dart';

class LoadingPage extends StatefulWidget {
  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      print('Flutter企业站启动...');
      Application.router.navigateTo(context, "/");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: <Widget>[
          Image.asset('assets/images/loading.jpeg',),
          Positioned(
            top: 100,
            child: Container(
              width: 400,
              child: Center(
                child: Text(
                  'Flutter 企业站',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 36.0,
                    decoration: TextDecoration.none
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
