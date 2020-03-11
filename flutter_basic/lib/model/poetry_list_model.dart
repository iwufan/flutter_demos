import 'dart:convert';

class PoetryListModel {
  int code;
  String msg;
  List<PoetryModel> data;

  PoetryListModel(this.data);

  PoetryListModel.fromJson(Map<String, dynamic> jsonStr) {
    code = jsonStr['code'];
    msg = jsonStr['msg'];
    if (jsonStr['result'] != null) {
      data = List<PoetryModel>();
      jsonStr['result'].forEach((v){
        data.add(PoetryModel.fromJson(json.decode(v)));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['code'] = this.code;
    data['msg'] = this.msg;
    if (this.data != null) {
      data['result'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class PoetryModel {

  String name;
  String dynasty;
  String content;

  PoetryModel({this.name, this.dynasty, this.content});

  PoetryModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    dynasty = json['dynasty'];
    content = json['content'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['dynasty'] = this.dynasty;
    data['content'] = this.content;
  }
}