import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class WebviewPage extends StatefulWidget {
  @override
  _WebviewPageState createState() => _WebviewPageState();
}

class _WebviewPageState extends State<WebviewPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebviewScaffold(
        url: 'https://www.google.com/?gws_rd=ssl',
        appBar: AppBar(
          title: Text('Google', style: TextStyle(
            color: Colors.white
          ),),
        ),
        withZoom: true,
        withLocalStorage: true,
        hidden: true,
        initialChild: Container(
          color: Colors.white,
          child: const Center(
            child: Text('Waiting.....'),
          ),
        ),
      )
    );
  }
}
