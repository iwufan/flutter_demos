import 'package:flutter/material.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(0),
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('张无忌'),
            accountEmail: Text('xxx@126.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://www.telegraph.co.uk/content/dam/beauty/2016/05/23/rexfeatures_5691772j_trans_NvBQzQNjv4BqWuQl9dYZUttba1a6uIgs4yRxUO5DiuBAjMQ-b4tHkMM.jpg'),
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://upload.wikimedia.org/wikipedia/en/e/e0/Game_of_Thrones_Season_8.png'))),
          ),
          ListTile(
            title: Text('用户反馈'),
            trailing: Icon(Icons.feedback),
          ),
          ListTile(
            title: Text('系统设置'),
            trailing: Icon(Icons.settings),
          ),
          ListTile(
            title: Text('我要发布'),
            trailing: Icon(Icons.send),
          ),
          Divider(
            indent: 15.0,
            endIndent: 15.0,
          ),
          ListTile(
            title: Text('注销'),
            trailing: Icon(Icons.exit_to_app),
          )
        ],
      ),
    );
  }
}
