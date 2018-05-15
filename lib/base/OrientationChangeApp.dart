import 'package:flutter/material.dart';
/// 监听方向改变实现GridView并排数量的改变
class OrientationChangeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('OrientationChangeApp')),
      body: new OrientationBuilder(builder: (context, orientation) {
        return new GridView.count(
          crossAxisCount: Orientation.portrait == orientation ? 2 : 3,
          children: new List.generate(50, (index) {
            return new Center(
              child: new Text('Item $index'),
            );
          }),
        );
      }),
    );
  }

}