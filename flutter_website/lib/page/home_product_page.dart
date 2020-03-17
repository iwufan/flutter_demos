import 'package:flutter/material.dart';
import 'package:flutter_website/utils/random_string.dart';
import 'package:provider/provider.dart';
import 'dart:convert';
import '../model/product.dart';
import '../utils/utils.dart';
import '../provider/product_provider.dart';
import '../service/http_service.dart';
import '../router/application.dart';
import '../conf/configure.dart';

class HomeProductPage extends StatefulWidget {
  @override
  _HomeProductPageState createState() => _HomeProductPageState();
}

class _HomeProductPageState extends State<HomeProductPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getProductList();
  }

  void getProductList() async {

    var url = 'http://' + Config.IP + ':' + Config.PORT + '/getProducts';
    var formData = {};

    await request(url, formData: formData).then((value){
      var data = json.decode(value.toString());
      print('产品列表数据 Json 格式:::' + data.toString());
      ProductListModel productList = ProductListModel.fromJson(data);

      if (productList.data == null) {
        Provider.of<ProductProvider>(context).getProductList([]);
      } else {
        Provider.of<ProductProvider>(context).getProductList(productList.data);
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    double deviceWidth = MediaQuery.of(context).size.width;
    return Consumer<ProductProvider>(builder: (BuildContext context, ProductProvider productProvider, Widget child) {
        List<ProductModel> productList = productProvider.productList;
        return Container(
          width: deviceWidth,
          color: Colors.white,
          padding: EdgeInsets.only(top: 10, bottom: 10, left: 7.5),
          child: buildProductList(context, deviceWidth, productList)
        );
    });
  }

  Widget buildProductList(BuildContext context, double deviceWidth, List<ProductModel> productList) {
    double itemWidth = deviceWidth * 168.5 / 360;
    double imageWidth = deviceWidth * 110.0 / 360;

    List<Widget> listWidgets = productList.map((item){
      var bgColor = string2Color('#f8f8f8');
      Color titleColor = string2Color('#db5d41');
      Color subtitleColor = string2Color('#999999');

      return InkWell(
        onTap: (){
          Application.router.navigateTo(context, '/detail?productId=${item.productId}');
        },
        child: Container(
          width: itemWidth,
          margin: EdgeInsets.only(bottom: 5, left: 2),
          padding: EdgeInsets.only(top: 10, left: 13, bottom: 7),
          color: bgColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                item.name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 15, color: titleColor),
              ),
              Text(
                item.desc,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 15, color: subtitleColor),
              ),
              Container(
                alignment: Alignment(0, 0),
                margin: EdgeInsets.only(top: 5),
                child: Image.network(
                  item.imageUrl,
                  width: imageWidth,
                  height: imageWidth,
                ),
              ),
            ],
          ),
        ),
      );
    }).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 5, bottom: 10),
          child: Text(
            '最新产品',
            style: TextStyle(
              fontSize: 16.0,
              color: Color.fromRGBO(51, 51, 51, 1),
            ),
          ),
        ),
        Wrap(
          spacing: 2,
          children: listWidgets,
        ),
      ],
    );
  }
}

