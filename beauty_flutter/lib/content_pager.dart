import 'package:beauty_flutter/card_recommend.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'card_free.dart';
import 'card_share.dart';
import 'card_special.dart';
import 'custom_appbar.dart';

class ContentPager extends StatefulWidget {
  final ValueChanged<int> onPageChanged;
  final ContentPagerController contentPagerController;
  ContentPager({Key key, this.onPageChanged, this.contentPagerController})
      : super(key: key);

  @override
  _ContentPagerState createState() => _ContentPagerState();
}

class _ContentPagerState extends State<ContentPager> {
  PageController _pageController = PageController(viewportFraction: 0.8);
  static List<Color> _colors = [
    Colors.blue,
    Colors.red,
    Colors.deepOrange,
    Colors.teal,
  ];
  @override
  void initState() {
    if (widget.contentPagerController != null) {
      widget.contentPagerController._pageController = _pageController;
    }
    _statusBar();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // appBar
        CustomAppBar(),
        Expanded(
            child: PageView(
          controller: _pageController,
          onPageChanged: widget.onPageChanged,
          children: <Widget>[
            _wrapItem(CardRecommend()),
            _wrapItem(CardShare()),
            _wrapItem(CardFree()),
            _wrapItem(CardSpecial()),
          ],
        ))
      ],
    );
  }

  Widget _wrapItem(Widget widget) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: widget,
    );
  }

  _statusBar() {
    SystemUiOverlayStyle uiOverlayStyle = SystemUiOverlayStyle(
      systemNavigationBarColor: Color(0xFF000000),
      systemNavigationBarDividerColor: null,
      statusBarColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    );
    SystemChrome.setSystemUIOverlayStyle(uiOverlayStyle);
  }
}

class ContentPagerController {
  PageController _pageController;
  void jumpToPage(int page) {
    _pageController?.jumpToPage(page);
  }
}
