import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class RandomWords extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new RandomWordsState();
  }
}

class RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    final wordPair = new WordPair.random();
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Simple RandomWords'),
      ),
      body: new Center(child: new Text(wordPair.asPascalCase)),
    );
//    return new Text(wordPair.asPascalCase);
  }

}