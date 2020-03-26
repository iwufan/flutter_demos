import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

class DateFormatPage extends StatefulWidget {
  @override
  _DateFormatPageState createState() => _DateFormatPageState();
}

class _DateFormatPageState extends State<DateFormatPage> {

  String _result = '';

  void _format() {

    print(formatDate(DateTime(1989, 02, 21), [yyyy, '-', mm, '-', dd]));
    // Long month names
    print(formatDate(DateTime(1989, 2, 21), [yy, '-', M, '-', d]));
    // Time parts
    print(formatDate(DateTime(1989, 02, 1, 15, 40, 10), [HH, ':', nn, ':', ss]));
    // Timezone
    print(formatDate(DateTime(1989, 02, 1, 15, 40, 10), [HH, ':', nn, ':', ss, z]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DateFormatPage'),
      ),
      body: Column(
        children: <Widget>[
          FlatButton(
            child: Text('格式日期'),
            onPressed: (){
              setState(() {
                _format();
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
