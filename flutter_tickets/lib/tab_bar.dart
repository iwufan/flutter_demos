import 'package:flutter/material.dart';

// class FFTabBar extends StatefulWidget {
//   FFTabBar({Key key}) : super(key: key);

//   @override
//   _FFTabBarState createState() => _FFTabBarState();
// }

// class _FFTabBarState extends State<FFTabBar> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(color: Colors.black),
//       child: TabBar(tabs: [
//         Tab(
//           icon: Icon(Icons.movie_filter),
//           text: '正在热映',
//         ),
//         Tab(
//           icon: Icon(Icons.movie_creation),
//           text: '即将上映',
//         ),
//         Tab(
//           icon: Icon(Icons.local_movies),
//           text: 'TOP250',
//         ),
//       ]),
//     );
//   }
// }

class FTTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.black),
      child: TabBar(tabs: [
        Tab(
          icon: Icon(Icons.movie_filter),
          text: '正在热映',
        ),
        Tab(
          icon: Icon(Icons.movie_creation),
          text: '即将上映',
        ),
        Tab(
          icon: Icon(Icons.local_movies),
          text: 'TOP250',
        ),
      ]),
    );
  }
}
