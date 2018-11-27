import 'package:flutter/material.dart';

class MinePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _MineState();
}

class _MineState extends State<MinePage> {
  String _icon =
      "http://www.usanetwork.com/sites/usanetwork/files/styles/629x720/public/suits_cast_harvey.jpg?itok=fpTOeeBb";

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new Scaffold(
      appBar: new AppBar(
        title: new Text('我的'),
        actions: <Widget>[],
      ),
      body: new Container(
        child: new SingleChildScrollView(
          child: new Column(
            children: <Widget>[
              _creatPersonInfo(),
              _creatDevider(5.0),
              _creatGuestView(),
              new Padding(padding: new EdgeInsets.only(top: 16.0)),
              _creatDevider(1.5),
              _creatGuestView2(),
              new Padding(padding: new EdgeInsets.only(top: 16.0)),
              _creatDevider(1.5),
              _itemList()
            ],
          ),
        ),
      ),
    ));
  }

  /**
   * 个人信息
   */
  Widget _creatPersonInfo() {
    return new Container(
      height: 128.0,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      // padding: new EdgeInsets.only(top: 8.0),
      child: new Row(
        children: <Widget>[
          new Padding(padding: new EdgeInsets.only(left: 8.0)),
          new Container(
            alignment: Alignment.topLeft,
            height: 108.0,
            child: new CircleAvatar(
              radius: 32.0,
              backgroundImage: new NetworkImage(_icon),
            ),
          ),
          new Container(
              height: 108.0,
              padding: new EdgeInsets.only(top: 24.0, left: 12.0),
              child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Row(
                      // crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        new Text(
                          "兔斯基。",
                          style: new TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        new Padding(padding: new EdgeInsets.only(left: 8.0)),
                        Image.asset(
                          'images/edit_name.png',
                          width: 18.0,
                          height: 18.0,
                        )
                      ],
                    ),
                    new Padding(padding: new EdgeInsets.only(top: 18.0)),
                    new Row(
                      children: <Widget>[
                        new Text("积分:"),
                        new Padding(padding: new EdgeInsets.only(left: 4.0)),
                        new Text(
                          "0",
                          style: new TextStyle(color: Colors.redAccent),
                        ),
                        new Padding(padding: new EdgeInsets.only(left: 12.0)),
                        new Text("余额:"),
                        new Padding(padding: new EdgeInsets.only(left: 4.0)),
                        new Text(
                          "0.00元",
                          style: new TextStyle(color: Colors.redAccent),
                        )
                      ],
                    ),
                    new Padding(padding: new EdgeInsets.only(top: 2.0)),
                    new Text(
                      "推广码:835394",
                      style: new TextStyle(color: Colors.black, fontSize: 14.0),
                    ),
                  ])),
          new Container(
            height: 108.0,
            padding: new EdgeInsets.only(left: 36.0),
            alignment: Alignment.topRight,
            child: new RaisedButton(
              onPressed: () {},
              child: new Text(
                "未认证",
                style: new TextStyle(color: Colors.white),
              ),
              color: Colors.orange,
              shape: StadiumBorder(),
            ),
          )
        ],
      ),
    );
  }

  Widget _creatDevider(height) {
    return new Container(
      height: height,
      color: Colors.black12,
      margin: new EdgeInsets.only(left: 12.0, right: 12.0),
    );
  }

  /**
   * 创建导航图标
   */
  Widget _creatGuestView() {
    return new Container(
//      margin: new EdgeInsets.all(8.0),
      padding: new EdgeInsets.only(top: 8.0, left: 24.0, right: 24.0),
      child:
          new Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, //对齐方式：平均间隔
              children: [
            new Column(
              children: <Widget>[
                new Image.asset(
                  'images/wd_1.png',
                  height: 32.0,
                  width: 32.0,
                ),
                new Padding(padding: const EdgeInsets.only(top: 12.0)),
                new Text("我的需求")
              ],
            ),
            new Column(
              children: <Widget>[
                new Image.asset('images/wd_2.png', height: 32.0, width: 32.0),
                new Padding(padding: const EdgeInsets.only(top: 12.0)),
                new Text("我的技能")
              ],
            ),
            new Column(
              children: <Widget>[
                new Image.asset('images/wd_3.png', height: 32.0, width: 32.0),
                new Padding(padding: const EdgeInsets.only(top: 12.0)),
                new Text("我的积分")
              ],
            ),
            new Column(
              children: <Widget>[
                new Image.asset('images/wd_4.png', height: 32.0, width: 32.0),
                new Padding(padding: const EdgeInsets.only(top: 12.0)),
                new Text("我的任务")
              ],
            ),
          ]),
    );
  }

  Widget _creatGuestView2() {
    return new Container(
//      margin: new EdgeInsets.all(8.0),
      padding: new EdgeInsets.only(top: 8.0, left: 24.0, right: 24.0),
      child:
          new Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, //对齐方式：平均间隔
              children: [
            new Column(
              children: <Widget>[
                new Image.asset(
                  'images/wd_5.png',
                  height: 32.0,
                  width: 32.0,
                ),
                new Padding(padding: const EdgeInsets.only(top: 12.0)),
                new Text("我的评价")
              ],
            ),
            new Column(
              children: <Widget>[
                new Image.asset('images/wd_6.png', height: 32.0, width: 32.0),
                new Padding(padding: const EdgeInsets.only(top: 12.0)),
                new Text("我的优惠券")
              ],
            ),
            new Column(
              children: <Widget>[
                new Image.asset('images/wd_7.png', height: 32.0, width: 32.0),
                new Padding(padding: const EdgeInsets.only(top: 12.0)),
                new Text("进货订单")
              ],
            ),
            new Column(
              children: <Widget>[
                new Image.asset('images/wd_8.png', height: 32.0, width: 32.0),
                new Padding(padding: const EdgeInsets.only(top: 12.0)),
                new Text("出货订单")
              ],
            ),
          ]),
    );
  }

  Widget _itemList() {
    return new Column(
      children: <Widget>[
        _item('images/wdgz.png', '我的关注'),
        new Padding(padding: new EdgeInsets.only(top: 4.0)),
        _creatDevider(1.0),
        _item('images/yqhy.png', '邀请好友'),
        new Padding(padding: new EdgeInsets.only(top: 4.0)),
        _creatDevider(1.0),
        _item('images/sz.png', "系统设置"),
        new Padding(padding: new EdgeInsets.only(top: 4.0)),
        _creatDevider(1.0),
        _item('images/jylc.png', '交易流程'),
        new Padding(padding: new EdgeInsets.only(top: 4.0)),
        _creatDevider(1.0),
      ],
    );
  }

  Widget _item(img, title) {
    return new Container(
      padding: new EdgeInsets.only(left: 12.0, top: 6.0),
      width: MediaQuery.of(context).size.width,
      height: 42.0,
      child: new Row(
        children: <Widget>[
          Image.asset(
            img,
            width: 16.0,
            height: 16.0,
          ),
          new Padding(padding: new EdgeInsets.only(left: 8.0)),
          new Text(title),
          new Padding(
              padding: new EdgeInsets.only(
                  left: MediaQuery.of(context).size.width - 128.0)),
          Image.asset(
            'images/gd.png',
            height: 16.0,
            width: 16.0,
            alignment: Alignment.centerRight,
          )
        ],
      ),
    );
  }
}
