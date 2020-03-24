import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter_mixed/pages/html.dart';
import 'package:flutter_mixed/pages/swiper.dart';
import 'package:flutter_mixed/pages/url_launcher_page.dart';

class Application{
  static Router router;
}

class Routes {

  static String launcherPage = '/launcher';
  static String htmlPage = '/html';
  static String swiperPage = '/swiper';

  static void configureRoutes(Router router) {

    router.define(launcherPage, handler: launcherHandler);
    router.define(htmlPage, handler: htmlHandler);
    router.define(swiperPage, handler: swiperHandler);
  }
}

Handler launcherHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    print(params);
    String url = params['url'].first;
    return LauncherPage(url: url);
  }
);

Handler htmlHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return Html();
  }
);

Handler swiperHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      print(params);
      String title = params['title'].first;
      return SwiperPage(title: title);
    }
);