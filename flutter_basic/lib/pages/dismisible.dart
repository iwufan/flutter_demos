import 'package:flutter/material.dart';

class GesturePage extends StatelessWidget {

  List<String> items = new List<String>.generate(30, (i) => "列表项 ${i + 1}");

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: Text('Dismissible Example'),
      ),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index){
            final item = items[index];

            return Dismissible(
              key: Key(item),
              onDismissed: (direction){
                items.removeAt(index);
                Scaffold.of(context).showSnackBar(SnackBar(content: Text('$item is deleted!')));
              },
              child: ListTile(title: Text('$item')),
            );
          },
      ),
    );
  }
}