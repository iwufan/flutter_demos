import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Counter()),
      ],
      child: MaterialApp(
        title: "Provider example",
        home: FirstPage(),
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
        title: Text("The First Page"),
        actions: <Widget>[
          FlatButton(
            child: Text("Next"),
            onPressed: () =>
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return SecondPage();
              })),
          ),
        ],
      ),
      body: Center(
        child: Text("${Provider.of<Counter>(context, listen: false).count}"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Provider.of<Counter>(context, listen: false).increment();
        },
        child: Icon(Icons.add),
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
        title: Text("The Second Page"),
      ),
      body: Center(
        child: Text("${Provider.of<Counter>(context, listen: false).count}"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Provider.of<Counter>(context, listen: false).increment();
        },
        child: Icon(Icons.add),
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

