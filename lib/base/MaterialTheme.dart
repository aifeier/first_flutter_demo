import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

//void main() {
//  runApp(new MaterialThemeApp());
//}

class MaterialThemeApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final appName = 'Custom Themes';

    return new MaterialApp(
      title: appName,
      theme: new ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
        accentColor: Colors.cyan[600],
      ),
      home: new MyHomePage(
        title: appName,
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold
    (
        appBar: new AppBar(
        title: new Text(title)
    ,
    ),
    body: new Center(
    child: new
    Container(
    color: Theme
        .of(context)
        .accentColor,
    child: new Text(
    'Text with a background color',
    style: Theme
        .of(context)
        .textTheme
        .title,
    ),

    ),
    )
    ,
    floatingActionButton: new Theme(
    data: Theme.
    of(context).copyWith(accentColor: Colors
        .blueGrey),
    child: new FloatingActionButton(
    onPressed:()=> Scaffold.of(context).showSnackBar(new SnackBar(content: new Text('I am a snackBar'))),
    child: new Icon(Icons.build),)),
    );
    }
}