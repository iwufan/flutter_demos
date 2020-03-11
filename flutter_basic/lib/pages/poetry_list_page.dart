import 'package:flutter/material.dart';
import 'dart:convert';
import '../model/poetry_list_model.dart';
import '../service/http_service.dart';

class PoetryListPage extends StatefulWidget {

  _PoetryListPageState createState() => _PoetryListPageState();
}

class _PoetryListPageState extends State<PoetryListPage> {

  PoetryListModel poetryList = PoetryListModel([]);

  var scrollController = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getPoetries();
  }

  void getPoetries() async {
    var url = 'http://localhost:8000/poetry/getPoetries';
//    var formData = {'poetryId': '111'};

    await request(url).then((value){

      var data = json.decode(value.toString());

      print('PoetryListJsonFormat:::' + data.toString());

      setState(() {
        poetryList = PoetryListModel.fromJson(data);
      });
    });
  }

  Widget _ListWidget(List newList, int index) {
    return Container(
      padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(width: 1.0, color: Colors.black12),
        ),
      ),
      child: Row(
        children: <Widget>[
          Column(
            children: <Widget>[
              _poetryName(newList, index),
              _poetryContent(newList, index),
            ],
          ),
        ],
      ),
    );
  }

  Widget _poetryName(List newList, int index) {
    return Container(
      padding: EdgeInsets.all(5.0),
      width: 400,
      child: Text (
        newList[index].name,
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(fontSize: 18),
      ),
    );
  }

  Widget _poetryContent(List newList, int index) {
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      width: 400,
      child: Row(
        children: <Widget>[
          Text(
            '${newList[index].content}',
            style: TextStyle(
                color: Colors.orange,
                fontSize: 18
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    if (poetryList.data.length > 0) {
      return ListView.builder(
          controller: scrollController,
          itemCount: poetryList.data.length,
          itemBuilder: (context, index){
            return _ListWidget(poetryList.data, index);
          },
      );
    }
    return Container();
  }
}