import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/kid_provider.dart';


class ProviderPage extends StatefulWidget {
  @override
  _ProviderPageState createState() => _ProviderPageState();
}

class _ProviderPageState extends State<ProviderPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Provider'),
      ),
      body: Center(
        child: Text("${Provider.of<KidProvider>(context, listen: false).kidList.first.name}"),
      ),
    );
  }
}


