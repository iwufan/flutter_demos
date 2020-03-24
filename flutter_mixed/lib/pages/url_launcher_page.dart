import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LauncherPage extends StatefulWidget {

  final String url;

  LauncherPage({Key key, this.url}) : super(key: key);

  @override
  _LauncherPageState createState() => _LauncherPageState();
}

class _LauncherPageState extends State<LauncherPage> {

  @override
  void initState() {
    super.initState();

    print(widget.url);
    _browseWeb(widget.url);
  }


  Future<void> _browseWeb(String url) async {
    if (await canLaunch(url)){
      return launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Launcher"),
      ),
    );
  }
}
