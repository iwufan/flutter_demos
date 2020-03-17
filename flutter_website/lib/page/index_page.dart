import 'package:flutter/material.dart';
import 'package:flutter_website/page/chat_page.dart';
import 'package:provider/provider.dart';
import 'product_page.dart';
import 'home_page.dart';
import '../provider/websocket_provider.dart';
import '../provider/current_index_provider.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {

  HomePage homePage;
  ProductPage productPage;
  ChatPage chatPage;

  bool socketInited = false;

  currentPage() {
    int currentIndex = Provider.of<CurrentIndexProvider>(context).currentIndex;
    switch(currentIndex){
      case 0:
        if (homePage == null) {
          homePage = HomePage();
        }
        return homePage;
      case 1:
        if (productPage == null) {
          productPage = ProductPage();
        }
        return productPage;
      case 2:
        if (chatPage == null) {
          chatPage = ChatPage();
        }
        return chatPage;
    }
  }

  @override
  Widget build(BuildContext context) {

    if (!socketInited) {
//      Provider.of<WebSocketProvider>(context).init();
        socketInited = true;
    }

    int currentIndex = Provider.of<CurrentIndexProvider>(context).currentIndex;

    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter 企业站实战'),
        leading: Icon(Icons.home),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: (){},
              child: Icon(
                Icons.search,
              ),
            ),
          ),
        ],
      ),
      body: currentPage(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: ((index){
          Provider.of<CurrentIndexProvider>(context).changeIndex(index);
        }),
        items: [
          BottomNavigationBarItem(
            title: Text(
              '首页'
            ),
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            title: Text(
                '产品'
            ),
            icon: Icon(Icons.apps),
          ),
          BottomNavigationBarItem(
            title: Text(
                '联系我们'
            ),
            icon: Icon(Icons.insert_comment),
          ),
        ],
      ),
    );
  }
}

