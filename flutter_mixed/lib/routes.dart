import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter_mixed/pages/date_format.dart';
import 'package:flutter_mixed/pages/dio.dart';
import 'package:flutter_mixed/pages/providerPage.dart';
import 'package:flutter_mixed/pages/stringValidator.dart';
import 'package:flutter_mixed/pages/swiper.dart';
import 'package:flutter_mixed/pages/url_launcher_page.dart';
import 'package:flutter_mixed/pages/webview.dart';

class Application{
  static Router router;
}

class Routes {

  static String launcherPage = '/launcher';
  static String swiperPage = '/swiper';
  static String stringValidatorPage = '/stringvalidator';
  static String dioPage = '/dioPage';
  static String dateFormatPage = '/dateFormat';
  static String webviewPage = '/webview';
  static String providerPage = '/provider';

  static void configureRoutes(Router router) {

    router.define(launcherPage, handler: launcherHandler);
    router.define(swiperPage, handler: swiperHandler);
    router.define(stringValidatorPage, handler: stringValidatorHandler);
    router.define(dioPage, handler: dioHandler);
    router.define(dateFormatPage, handler: dateFormatHandler);
    router.define(webviewPage, handler: webviewHandler);
    router.define(providerPage, handler: providerHandler);
  }
}

Handler launcherHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    print(params);
    String url = params['url'].first;
    return LauncherPage(url: url);
  }
);

Handler swiperHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      print(params);
      String title = params['title'].first;
      return SwiperPage(title: title);
    }
);

Handler stringValidatorHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return StringValidator();
    }
);

Handler dioHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return DioPage();
    }
);

Handler dateFormatHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return DateFormatPage();
    }
);

Handler webviewHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return WebviewPage();
    }
);

Handler providerHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return ProviderPage();
    }
);