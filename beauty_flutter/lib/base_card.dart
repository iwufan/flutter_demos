import 'package:flutter/material.dart';

class BaseCard extends StatefulWidget {
  BaseCard({Key key}) : super(key: key);

  @override
  BaseCardState createState() => BaseCardState();
}

class BaseCardState extends State<BaseCard> {
  Color subTitleColor = Colors.grey;
  Color bottomTitleColor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return PhysicalModel(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(6),
      clipBehavior: Clip.antiAlias,
      child: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          children: <Widget>[
            topContent(),
            bottomContent(),
          ],
        ),
      ),
    );
  }

  topContent() {
    return Padding(
      padding: EdgeInsets.only(left: 20, top: 26, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [topTitle(''), topTitle2()],
          ),
          subTitle('')
        ],
      ),
    );
  }

  bottomContent() {
    return Container();
  }

  Widget subTitle(String title) {
    return Padding(
      padding: EdgeInsets.only(top: 5),
      child: Text(
        title,
        style: TextStyle(fontSize: 11, color: subTitleColor),
      ),
    );
  }

  Widget topTitle(String title) {
    return Text(
      title,
      style: TextStyle(fontSize: 22),
    );
  }

  Widget topTitle2() {
    return Container();
  }

  Widget bottomTitle(String title) {
    return Text(
      title,
      style: TextStyle(fontSize: 12, color: bottomTitleColor),
    );
  }
}
