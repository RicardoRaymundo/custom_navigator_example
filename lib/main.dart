import 'package:custom_navigator_example/page_a.dart';
import 'package:flutter/material.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Navigation Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: _MainPage(title: 'Custom Navigation Example'),
    );
  }
}

class _MainPage extends StatelessWidget {
  _MainPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: PageA(),
    );
  }
}
