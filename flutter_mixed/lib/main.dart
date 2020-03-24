import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
//      onGenerateRoute: Application.router.generator,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    final router = Router();

    Routes.configureRoutes(router);

    Application.router = router;

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          FlatButton(
            child: Text(
              'flutter_swiper',
            ),
            color: Colors.orange,
            onPressed: (){
                print('click flutter swiper');
                Application.router.navigateTo(context, Routes.swiperPage + '?title=Swiper!!');
            },
          ),
          FlatButton(
            child: Text(
              'dio',
            ),
            color: Colors.orange,
            onPressed: (){
              print('click dio');
            },
          ),
          FlatButton(
            child: Text(
              'provider',
            ),
            color: Colors.orange,
            onPressed: (){
              print('click provider');
            },
          ),
          FlatButton(
            child: Text(
              'flutter_easyrefresh',
            ),
            color: Colors.orange,
            onPressed: (){
              print('click flutter_easyrefresh');
            },
          ),
          FlatButton(
            child: Text(
              'fluro',
            ),
            color: Colors.orange,
            onPressed: (){
              print('click fluro');
            },
          ),
          FlatButton(
            child: Text(
              'flutter_html',
            ),
            color: Colors.orange,
            onPressed: (){
              print('click flutter_html');
              Application.router.navigateTo(context, Routes.htmlPage, transition: TransitionType.inFromRight);
            },
          ),
          FlatButton(
            child: Text(
              'date_format',
            ),
            color: Colors.orange,
            onPressed: (){
              print('click date_format');
            },
          ),
          FlatButton(
            child: Text(
              'flutter_webview_plugin',
            ),
            color: Colors.orange,
            onPressed: (){
              print('click flutter_webview_plugin');
            },
          ),
          FlatButton(
            child: Text(
              'url_launcher',
            ),
            color: Colors.orange,
            onPressed: (){
              print('click url_launcher');
              String path = "/launcher?url=http:baidu.com&id=321&name=${Uri.encodeComponent("王小")}";

              Application.router.navigateTo(context, path, transition: TransitionType.inFromRight);
            },
          ),
          FlatButton(
            child: Text(
              'http',
            ),
            color: Colors.orange,
            onPressed: (){
              print('click http');
            },
          ),
          FlatButton(
            child: Text(
              'string_validator',
            ),
            color: Colors.orange,
            onPressed: (){
              print('click string_validator');
            },
          ),
        ],
      ),
    );
  }
}
