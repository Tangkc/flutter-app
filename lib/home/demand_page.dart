import 'package:flutter/material.dart';

class DemandPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _DemandPageState();
}

class _DemandPageState extends State<DemandPage> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('需求'),
          actions: <Widget>[new Container()],
        ),
        body:new ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            new Container(
              width: 160.0,
              color: Colors.red,
            ),
            new Container(
              width: 160.0,
              color: Colors.blue,
            ),
            new Container(
              width: 160.0,
              color: Colors.green,
            ),
            new Container(
              width: 160.0,
              color: Colors.yellow,
            ),
            new Container(
              width: 160.0,
              color: Colors.orange,
            ),
          ],
        ),
      ),
    );
  }
}
