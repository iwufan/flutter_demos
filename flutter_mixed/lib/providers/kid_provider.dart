import 'package:flutter/material.dart';
import '../model/kid.dart';

class KidProvider with ChangeNotifier {

  List<KidModel> kidList = [
    KidModel(name: 'tom', age: 8),
    KidModel(name: 'jerry', age: 10)
  ];
}