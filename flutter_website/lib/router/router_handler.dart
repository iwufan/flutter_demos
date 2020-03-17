import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import '../page/product_detail_page.dart';
import '../page/index_page.dart';

Handler rootHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return IndexPage();
  }
);

Handler detailsHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    String productId = params['productId'].first;
    return ProductDetailPage();
  }
);