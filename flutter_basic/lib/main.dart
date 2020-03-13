import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:io';
import 'pages/poetry_list_page.dart';
import 'pages/login.dart';
import 'pages/Route.dart';
import 'pages/Scenery.dart';
import 'pages/dismisible.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: MyHomePage(),
      title: 'Examples',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      routes: {
        '/first': (BuildContext context) => FirstPage(),
        'second': (BuildContext context) => SecondPage(),
        '/home': (BuildContext context) => MyHomePage(),
        '/poetry': (BuildContext context) => PoetryListPage(),
        '/gesture': (BuildContext context) => GesturePage()
      },
//      initialRoute: '/first',
    );
//    return MultiProvider(
//      providers: [
//        ChangeNotifierProvider(create: (_) => Counter()),
//      ],
//      child: MaterialApp(
//        title: "Provider example",
//        home: MyHomePage(),
//      ),
//    );
  }
}

//class FirstPage extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return Scaffold(
//      appBar: AppBar(
//        title: Text("The First Page"),
//        actions: <Widget>[
//          FlatButton(
//            child: Text("Next"),
//            onPressed: () =>
//              Navigator.push(context, MaterialPageRoute(builder: (context){
////                return SecondPage();
//                return LoginPage();
//              })),
//          ),
//        ],
//      ),
//      body: Center(
//        child: Text("${Provider.of<Counter>(context, listen: false).count}"),
//      ),
//      floatingActionButton: FloatingActionButton(
//        onPressed: (){
//          Provider.of<Counter>(context, listen: false).increment();
//        },
//        child: Icon(Icons.add),
//      ),
//    );
//  }
//}
//
//class SecondPage extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return Scaffold(
//      appBar: AppBar(
//        title: Text("The Second Page"),
//      ),
//      body: Center(
//        child: Text("${Provider.of<Counter>(context, listen: false).count}"),
//      ),
//      floatingActionButton: FloatingActionButton(
//        onPressed: (){
//          Provider.of<Counter>(context, listen: false).increment();
//        },
//        child: Icon(Icons.add),
//      ),
//    );
//  }
//}

class HttpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp (
      title: 'http 请求示例',
      home: Scaffold(
        appBar: AppBar(
          title: Text('http请求示例'),
        ),
        body: Center(
          child: RaisedButton(
            onPressed: () {
              var url = 'http://127.0.0.1:8000/user/getAllUsers';
              http.get(url).then((response) {
                print("状态：${response.statusCode}");
                print("正文：${response.body}");
              });
            },
            child: Text('Send Http Request'),
          ),
        ),
      ),
    );
  }
}

class Counter with ChangeNotifier {

  int _count = 0;
  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }
}

class HttpClientPage extends StatelessWidget {
  
  void getHttpClientData() async {
    try {
      HttpClient httpClient = HttpClient();
      
      HttpClientRequest request = await httpClient.getUrl(
        Uri.parse("http://127.0.0.1:8000/user/getAllUsers"));
      HttpClientResponse response = await request.close();

      var result = await response.transform(utf8.decoder).join();

      print(result);

      httpClient.close();
    } catch (e) {
      print("Request failed: $e");
    } finally {

    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'HttpClient Request',
      home: Scaffold(
        appBar: AppBar(
          title: Text('HttpClient Request'),
        ),
        body: Center(
          child: RaisedButton(
            child: Text("Send a HttpClient Request"),
            onPressed: getHttpClientData,
          ),
        ),
      ),
    );
  }
}

