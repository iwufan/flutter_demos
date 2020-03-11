import 'dart:io';
import 'package:dio/dio.dart';
import 'dart:async';

Future request(url, {formData}) async {
  try {
    Response response;
    Dio dio = Dio();
    dio.options.contentType = ContentType.parse('application/json').toString();

    response = await dio.post(url, data: formData);

    if (response.statusCode == 200) {
      return response;
    } else {
      throw Exception('Server interface error, Please check your server...');
    }
  } catch (e) {
    return print('error:::${e}');
  }
}