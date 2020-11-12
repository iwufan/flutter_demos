import 'package:flutter/material.dart';
import 'package:flutter_tickets/movie/list.dart';

import 'left_drawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '女神专用',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('电影列表'),
          centerTitle: true,
          actions: [
            IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  print('点击了搜索按钮');
                })
          ],
        ),
        drawer: LeftDrawer(),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(color: Colors.black),
          height: 50,
          child: TabBar(labelStyle: TextStyle(height: 0, fontSize: 10), tabs: [
            Tab(
              icon: Icon(Icons.movie_filter),
              text: '正在热映',
            ),
            Tab(
              icon: Icon(Icons.movie_creation),
              text: '即将上映',
            ),
            Tab(
              icon: Icon(Icons.local_movies),
              text: 'TOP250',
            ),
          ]),
        ),
        body: TabBarView(
          children: [
            MovieList(
              mt: 'in_theaters',
            ),
            MovieList(mt: 'coming_soon'),
            MovieList(
              mt: 'top250',
            ),
          ],
        ),
      ),
    );
  }
}
