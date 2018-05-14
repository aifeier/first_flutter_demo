import 'package:flutter/material.dart';

class ImageDemo extends StatelessWidget {

  _buildListItem() {
    var imgs = [
      'http://img.zcool.cn/community/01058a556895750000012716d39e4e.jpg@3000w_1l_2o_100sh.jpg',
      'http://img.zcool.cn/community/01e7d3591a7392b5b3086ed49a3358.jpg',
      'https://up.enterdesk.com/edpic_source/63/6a/4e/636a4ecd6798a6382376ec8515378065.jpg'
    ];
    return imgs.map((s) {
      return new ListTile(title: new Image.network(s));
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Image List Demo'),
      ),
      body: new ListView(
        padding: EdgeInsets.zero,
        children: _buildListItem(),
      ),
    );
  }

}