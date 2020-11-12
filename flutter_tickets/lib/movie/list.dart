import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

Dio dio = new Dio();

class MovieList extends StatefulWidget {
  MovieList({Key key, @required this.mt}) : super(key: key);

  final String mt;

  @override
  _MovieListState createState() => _MovieListState();
}

class _MovieListState extends State<MovieList> {
  int page = 1;
  int pagesize = 10;

  var mlist = [];
  var total = 0;

  @override
  void initState() {
    super.initState();
    getMovieList();
  }

  @override
  Widget build(BuildContext context) {
    return Text('这是电影列表页面 --- ' + widget.mt + ' --- ${mlist.length}');
  }

  getMovieList() async {
    int offset = (page - 1) * pagesize;
    var response = await dio.get(
        'http://www.liulongbin.top:3005/api/v2/movie/${widget.mt}?start=$offset&count=$pagesize');

    var result = response.data;

    print(result);

    setState(() {
      mlist = result['subjects'];
      total = result['total'];
    });
  }
}
