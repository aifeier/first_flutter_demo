import 'package:flutter/material.dart';

/// 左边划出的菜单界面
class DrawerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('Drawer App'),),
      body: new Center(child: new Text('主界面在这里'),),
      drawer: new Drawer(
        child: new ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            new DrawerHeader(
              child: new Text('this is a drawer header'),
              decoration: new BoxDecoration(color: Colors.blue),
            ),
            new ListTile(
              title: new Text('Item 1'),
              onTap: () {},
            ),
            new ListTile(
              title: new Text('Item 2'),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }

}