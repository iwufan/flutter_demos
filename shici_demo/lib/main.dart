import 'package:flutter/material.dart';
import 'package:shici_demo/Shici.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
        primaryColor: new Color(0xffff4d61),
      ),
      home: new HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {

  List<String> getDataList() {
    return ["唐诗", "宋词", "元曲", "古诗", "现代诗", "英文诗", "名人", "先秦"];
  }

  List<Widget> getWidgetList(BuildContext context) {
    return getDataList().map((type) => getItemContainer(context, type)).toList();
  }

  Widget getItemContainer(BuildContext context, String type) {
    return Container(

      alignment: Alignment.center,
      decoration: BoxDecoration(
      color: Colors.pinkAccent,
      border: Border.all(
        color: Colors.red,
        width: 2.0,
      ),
      borderRadius: const BorderRadius.all(const Radius.circular(10)),
      ),
      child: FlatButton(onPressed: () {
        Navigator.push(context, new MaterialPageRoute(builder: (context) => new ShiciListPage()));
      }, child: Text(
          type,
          style: TextStyle(
            fontSize: 26,
            color: Colors.white
          )
      )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "最美诗词",
          style: new TextStyle(
            fontSize: 18.0,
          )
        ),
      ),
      body: GridView.count(
        //水平子Widget之间间距
        crossAxisSpacing: 10.0,
        //垂直子Widget之间间距
        mainAxisSpacing: 30.0,
        //GridView内边距
        padding: EdgeInsets.all(10.0),
        //一行的Widget数量
        crossAxisCount: 2,
        //子Widget宽高比例
        childAspectRatio: 2.0,
        //子Widget列表
        children: getWidgetList(context),
      ),
    );
  }
}

class ShiciListPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "唐诗列表"
        ),
      ),
      body: new ListView.builder(
          itemCount: tangShiArray.length,
          itemBuilder: (context, i) => new Column(
            children: <Widget>[
              new Divider(
                height: 10.0,
              ),
              new GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new ShiciDetail(shici: tangShiArray[i])
                      )
                  );
                },
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container (
                          margin: const EdgeInsets.only(
                            left: 15,
                          ),
                          child: new Text(
                            tangShiArray[i].name,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            left: 15,
                          ),
                          child: new Text(
                            tangShiArray[i].dynasty,
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            left: 10,
                          ),
                          child: new Text(
                            tangShiArray[i].author,
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                        margin: const EdgeInsets.only(
                          top: 10,
                          bottom: 10,
                        ),
                        child: new Text(
                          tangShiArray[i].content,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.lightBlueAccent,
                          ),
                        )
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}

class ShiciDetail extends StatelessWidget {

  final Shici shici;

  ShiciDetail({Key key, @required this.shici}): super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("诗词详情"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.topCenter,
            margin: const EdgeInsets.only(
              top: 40,
            ),
            child: new Text(
              shici.name,
              style: TextStyle(
                fontSize: 30,
                color: new Color(0xffff4d61),
              ),
            ),
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(
                  right: 15,
                ),
                child: new Text(
                  shici.dynasty,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  right: 30,
                ),
                child: new Text(
                  shici.author,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
          Container(
              margin: const EdgeInsets.only(
                top: 20,
              ),
              child: new Text(
                shici.content,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.lightBlueAccent,
                ),
              )
          ),
        ],
      )

    );
  }
}
