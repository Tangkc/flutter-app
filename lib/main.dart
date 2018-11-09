import 'package:flutter/material.dart';
import 'package:flutter_huobang/home/index.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '火帮',
      home: new Index(),
    );
  }
}
