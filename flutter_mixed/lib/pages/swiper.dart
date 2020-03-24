import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperPage extends StatefulWidget {

  final String title;

  SwiperPage({Key key, this.title}) : super(key: key);

  @override
  _SwiperPageState createState() => _SwiperPageState();
}

class _SwiperPageState extends State<SwiperPage> {

  List<String> imageUrls = ['https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=101028799,3702409484&fm=26&gp=0.jpg',
    'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=225193914,751284870&fm=26&gp=0.jpg',
    'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2432299774,2912934336&fm=26&gp=0.jpg'];

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = width * 540.0 / 1080.0;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        width: width,
        height: height,
        child: Swiper(
          itemBuilder: (BuildContext context, int index) {
              return Container(
                  margin: EdgeInsets.only(left: 5, right: 5),
                  child: Image.network(
                    imageUrls[index],
                    fit: BoxFit.fill,
//                    width: width,
//                    height: height,
                  )
              );
          },
          itemCount: imageUrls.length,
          pagination: SwiperPagination(),
          // 显示左右箭头
//          control: SwiperControl(),
          autoplay: true,
        ),
      ),
    );
  }
}

