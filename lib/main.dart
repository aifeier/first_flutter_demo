import 'package:first_flutter_demo/base/DrawerApp.dart';
import 'package:first_flutter_demo/base/ImageDemo.dart';
import 'package:first_flutter_demo/base/OrientationChangeApp.dart';
import 'package:first_flutter_demo/base/SimpleListView.dart';
import 'package:first_flutter_demo/base/RandomWords.dart';
import 'package:first_flutter_demo/base/TabBarDemo.dart';
import 'package:flutter/material.dart';
import 'package:first_flutter_demo/base/MaterialTheme.dart';
import 'package:first_flutter_demo/base/SnackBar.dart';
import 'package:english_words/english_words.dart';


void main() => runApp(new FirstApp());

final _items = <String>[];

class FirstApp extends StatelessWidget {

//  final wordPair = new WordPair.random();


  @override
  Widget build(BuildContext context) {
    List<Widget> _buildRaw() {
      return _items.map((s) {
        return new ListTile(
          title: new Text(s),
          onTap: () {
            Navigator.push(context,
                new MaterialPageRoute(builder: (context) {
                  return new ListViewRandomWords();
                })
            );
          },
        );
      }).toList();
    }
    Widget _buildList() {
      return new ListView(
        children: _buildRaw(),
      );
    }
    return new MaterialApp(
      title: "Hello Flutter",
      theme: new ThemeData(
          primaryColor: Colors.white
      ),
//      home: new Scaffold(
//        appBar: new AppBar(
//          title: new Text('Hello Flutter'),
//        ),
//        body: new Padding(
//          padding: const EdgeInsets.all(8.0),
//          child: new Center(
////            child: new Text('Hello World')
////              child: new Text(wordPair.asPascalCase)
////              child: new RandomWords()
//              child: new ListViewRandomWords()
//          ),
//        ),
//      ),
//      home: new ListViewRandomWords(),
//      home: new RandomWords(),
      home: new ListWidget(),
    );
  }
}

class ListWidget extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new listWidgetState();
  }

}

class listWidgetState extends State<ListWidget> {

  List<Widget> _buildRaw() {
    _items.clear();
    _items.add("SimpleListView");
    _items.add("MaterialTheme");
    _items.add("SnackBar");
    _items.add("TabBar");
    _items.add("DrawerApp");
    _items.add("OrientationChangeApp");
    _items.add("ImageDemo");
    return ListTile.divideTiles(
        context: context,
        tiles: _items.map((s) {
          return new ListTile(
            title: new Text(s),
            onTap: () {
              Widget w;
              switch (s) {
                case 'SimpleListView':
                  w = new ListViewRandomWords();
                  break;
                case 'MaterialTheme':
                  w = new MaterialThemeApp();
                  break;
                case 'SnackBar':
                  w = new SnackBarApp();
                  break;
                case 'TabBar':
                  w = new TabBarApp();
                  break;
                case 'DrawerApp':
                  w = new DrawerApp();
                  break;
                case 'OrientationChangeApp':
                  w = new OrientationChangeApp();
                  break;
                case 'ImageDemo':
                  w = new ImageDemo();
                  break;
              }
              if (null != w) {
                Navigator.of(context).push(
                    new MaterialPageRoute(builder: (context) {
                      return w;
                    })
                );
              }
            },
          );
        })).toList();
  }

  Widget _buildList() {
    return new ListView(
      children: _buildRaw(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Flutter Demo',
        home: new Scaffold(
          appBar: new AppBar(
            title: new Text('Simple Flutter Demo'),
          ),
          body: _buildList(),
        ));
  }

}
