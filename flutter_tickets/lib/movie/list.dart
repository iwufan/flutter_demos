import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'detail.dart';

Dio dio = new Dio();

class MovieList extends StatefulWidget {
  MovieList({Key key, @required this.mt}) : super(key: key);

  final String mt;

  @override
  _MovieListState createState() => _MovieListState();
}

class _MovieListState extends State<MovieList>
    with AutomaticKeepAliveClientMixin {
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
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ListView.builder(
        itemCount: mlist.length,
        itemBuilder: (BuildContext ctx, int i) {
          var mitem = mlist[i];
          return GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext ctx) {
                return new MovieDetail(
                  id: mitem['id'],
                  title: mitem['title'],
                );
              }));
            },
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(top: BorderSide(color: Colors.black12))),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    width: 130,
                    height: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                          image: NetworkImage(mitem['images']['small']),
                          fit: BoxFit.cover,
                        )),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    height: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('电影名称：${mitem['title']}'),
                        Text('上映年份：${mitem['year']}'),
                        Text('电影类型：${mitem['genres'].join('，')}'),
                        Text('豆瓣评分：${mitem['rating']['average']}分'),
                        Text('主要演员：${mitem['title']}'),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }

  getMovieList() async {
    int offset = (page - 1) * pagesize;
    var response = await dio.get(
        'http://www.liulongbin.top:3005/api/v2/movie/${widget.mt}?start=$offset&count=$pagesize');

    var result = response.data;

    print(result);

    setState(() {
      var imageURLs = [
        'https://cdn.shopify.com/s/files/1/0738/6935/products/1313522-Q000_grande.jpg?v=1598349883',
        'https://images-na.ssl-images-amazon.com/images/I/91WNnQZdybL._AC_SL1500_.jpg',
        'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/movie-poster-template-design-21a1c803fe4ff4b858de24f5c91ec57f_screen.jpg?ts=1574144362',
        'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/adventure-movie-poster-template-design-7b13ea2ab6f64c1ec9e1bb473f345547_screen.jpg?ts=1576732289',
        'https://image-cdn.hypb.st/https%3A%2F%2Fhypebeast.com%2Fimage%2F2020%2F03%2Fmonster-hunter-milla-jovovich-tony-jaa-movie-poster-info-1.jpg?q=75&w=800&cbr=1&fit=max',
        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605257713011&di=6e13af5a4feae1d2b57c6751b8a8d9c4&imgtype=0&src=http%3A%2F%2Fhbimg.b0.upaiyun.com%2F225d7add5933e5fbf71d590831f35692c6f60fd71ad38-J48vo4_fw658',
        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605257713011&di=4b156b48659f49f102a2309ab5765b7b&imgtype=0&src=http%3A%2F%2Fhbimg.b0.upaiyun.com%2Fb99bc7d770b8cb0a25dd305695e580560a57c8db1316d-aS60Vz_fw658',
        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605257713011&di=f899973527a5ccf613bea15cda5538fa&imgtype=0&src=http%3A%2F%2Fa4.att.hudong.com%2F36%2F42%2F01300000397019130404423200830.jpg',
        'https://i.etsystatic.com/12190573/r/il/69d267/1457223509/il_570xN.1457223509_t6en.jpg',
        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605257713010&di=cfd98bd1f6c1d75b46c872209ae06b3e&imgtype=0&src=http%3A%2F%2Fhbimg.b0.upaiyun.com%2Fee5bd540afa14ef6f6d36972d2e662bdf84eb431e3f5-yZxtEp_fw658',
      ];
      mlist = result['subjects'];

      for (var i = 0; i < mlist.length; i++) {
        Map map = mlist[i];
        map['images']['small'] = imageURLs[i];
      }

      total = result['total'];
    });
  }
}
