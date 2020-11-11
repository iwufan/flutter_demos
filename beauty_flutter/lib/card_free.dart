import 'package:beauty_flutter/base_card.dart';
import 'package:flutter/material.dart';

class CardFree extends BaseCard {
  @override
  _CardFreeState createState() => _CardFreeState();
}

const BOOK_LIST = [
  {
    'title': '暴力沟通',
    'cover': 'https://images-na.ssl-images-amazon.com/images/I/91keddchHWL.jpg',
    'price': '19.6'
  },
  {
    'title': '追风筝的人',
    'cover':
        'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1594001574l/49086129.jpg',
    'price': '119.6'
  },
  {
    'title': '哈利波特',
    'cover':
        'https://img.theculturetrip.com/wp-content/uploads/2017/12/516iralv0bl-_sx331_bo1204203200_.jpg',
    'price': '50'
  },
  {
    'title': '死命招唤',
    'cover':
        'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1552257563l/43884222.jpg',
    'price': '33'
  },
  {
    'title': '绝处逢生',
    'cover':
        'https://images-na.ssl-images-amazon.com/images/I/41BGbFVQkcL._SX329_BO1,204,203,200_.jpg',
    'price': '14'
  },
  {
    'title': '春花秋月',
    'cover':
        'https://cup-us.imgix.net/covers/9780231192132.jpg?auto=format&w=350',
    'price': '1111'
  },
];

class _CardFreeState extends BaseCardState {
  @override
  Widget topTitle(String title) {
    return super.topTitle('免费听书馆');
  }

  @override
  Widget subTitle(String title) {
    return super.subTitle('第 108 期');
  }

  @override
  bottomContent() {
    return Expanded(
        child: Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        children: <Widget>[
          Expanded(child: _bookList()),
          Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: _bottomButton(),
          ),
        ],
      ),
    ));
  }

  Widget _bookList() {
    return GridView.count(
      crossAxisCount: 3,
      mainAxisSpacing: 10, // 垂直间距
      crossAxisSpacing: 15, // 水平间距
      childAspectRatio: 0.46, // 长宽比
      padding: EdgeInsets.only(left: 20, right: 20),
      children: BOOK_LIST.map((item) {
        return _item(item);
      }).toList(),
    );
  }

  _bottomButton() {
    return FractionallySizedBox(
      widthFactor: 1,
      child: Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: RaisedButton(
          onPressed: () {},
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          padding: EdgeInsets.only(top: 13, bottom: 15),
          color: Colors.blue,
          child: Text(
            '免费领取',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }

  Widget _item(Map<String, String> item) {
    return Container(
      child: Column(
        children: <Widget>[
          Stack(
            alignment: AlignmentDirectional.center,
            children: <Widget>[
              Image.network(
                item['cover'],
                fit: BoxFit.cover,
              ),
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black38),
                child: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                ),
              ),
              Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(color: Colors.black54),
                    child: Text(
                      '原价${item['price']}',
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  ))
            ],
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 5),
              child: Text(
                item['title'],
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 14),
              ),
            ),
          )
        ],
      ),
    );
  }
}
