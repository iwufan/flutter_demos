import 'package:flutter/material.dart';
import '../model/product.dart';

class ProductProvider with ChangeNotifier {

  List<ProductModel> productList = [];

  getProductList(List<ProductModel> list) {
    productList = list;
    notifyListeners();
  }

  addProductList(List<ProductModel> list) {
    productList.addAll(list);
    notifyListeners();
  }
}