import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Main Page',
          style: TextStyle(fontSize: 28.0),
        ),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            onPressed: (){
              Navigator.pushNamed(context, '/first');
            },
            child: Text(
              'Jump to First',
              style: TextStyle(fontSize: 28.0),
            ),
          ),
          RaisedButton(
            onPressed: (){
              Navigator.pushNamed(context, '/poetry');
            },
            child: Text(
              'Jump to Poetry',
              style: TextStyle(fontSize: 28.0),
            ),
          ),
          RaisedButton(
            onPressed: (){
              Navigator.pushNamed(context, '/gesture');
            },
            child: Text(
              'Jump to Gesture',
              style: TextStyle(fontSize: 28.0),
            ),
          ),
        ],
      ),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('The First Page'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: (){
            Navigator.pushNamed(context, 'second');
          },
          child: Text(
            'Jump to Second',
            style: TextStyle(fontSize: 28.0),
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('The Second Page'),
      ),
      body: Builder(
        builder: (BuildContext context) {
          return Center(
            child: RaisedButton(
              onPressed: (){
//                Navigator.pushNamed(context, '/home');
                Scaffold.of(context).showSnackBar(
                  SnackBar(content: Text('You clicked me!'))
                );
              },
              child: Text(
                'Jump to Home',
                style: TextStyle(fontSize: 28.0),
              ),
            ),
          );
        },
      ),
    );
  }
}