import 'package:flutter/material.dart';

class TabBarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new DefaultTabController(length: 3,
            child: new Scaffold(
              appBar: new AppBar(
                bottom: new TabBar(tabs: [
                  new Tab(icon: new Icon(Icons.directions_car),),
                  new Tab(icon: new Icon(Icons.directions_bus),),
                  new Tab(icon: new Icon(Icons.directions_walk),),
                ]),
                title: new Text('Tabs Demo'),
              ),
              body: new TabBarView(children: [
                new Tab(icon: new Icon(Icons.directions_car),),
                new Tab(icon: new Icon(Icons.directions_bus),),
                new Tab(icon: new Icon(Icons.directions_walk),text: 'Walk',),
              ]),
            )));
  }
}