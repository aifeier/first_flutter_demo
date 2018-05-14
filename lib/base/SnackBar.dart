import 'package:flutter/material.dart';

class SnackBarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'SnackBar Demo',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('SnackBar Demo'),
        ),
        body:new SnackBarPage(),
      ),
    );
  }
}

class SnackBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new RaisedButton(
        onPressed: () {
          Scaffold.of(context).showSnackBar(new SnackBar(
            content: new Text('I am a SnackBar'),
            action: new SnackBarAction(label: 'Undo', onPressed: (){}),));
        },
        child: new Text('Show SncakBar'),),
    );
  }
}