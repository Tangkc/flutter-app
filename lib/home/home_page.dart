import 'package:banner/banner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_huobang/model/chat_model.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Material(
        child: new Container(
            child: new SingleChildScrollView(
                child: new ConstrainedBox(
      constraints: new BoxConstraints(),
      child: new Column(
        children: <Widget>[
          new Stack(
            children: <Widget>[
              _creatBannerView(),
            ],
          ),
          new Padding(
            padding: const EdgeInsets.only(top: 8.0),
          ),
          _creatGuestView(),
          new Padding(
            padding: const EdgeInsets.only(top: 16.0),
          ),
          _creatDevider(),
          _creatTipView(),
          _creatDevider(),
          _creatTip2View(),
          _creatListView()
        ],
      ),
    ))));
  }

  /**
   * 创建轮播图
   */
  Widget _creatBannerView() {
    return new BannerView(
      height: 200.0,
      scrollTime: 400,
      data: [
        'http://pic.ffpic.com/files/tupian/tupian0277.jpg',
        'http://seopic.699pic.com/photo/50035/0520.jpg_wh1200.jpg',
        'http://seopic.699pic.com/photo/00026/7248.jpg_wh1200.jpg'
      ],
      buildShowView: (index, data) {
        return new Custom(text: data);
      },
      onBannerClickListener: (index, data) {
        print(index);
      },
    );
  }

  /**
   * 创建导航图标
   */
  Widget _creatGuestView() {
    String _p1 =
        "https://img.glyphs.co/img?src=aHR0cHM6Ly9zMy5tZWRpYWxvb3QuY29tL3Jlc291cmNlcy9DYW52YXMtVG90ZS1CYWctTW9ja3Vwcy1QcmV2aWV3LTIuanBn&q=90&enlarge=true&h=1036&w=1600";
    String _p2 =
        "https://img.glyphs.co/img?q=85&w=900&src=aHR0cHM6Ly9zMy5tZWRpYWxvb3QuY29tL2Jsb2ctaW1hZ2VzL0dTT0EtSW1hZ2UtMDIuanBnP210aW1lPTIwMTgwOTE4MTc0NDA4";
    String _p3 =
        "https://img.glyphs.co/img?q=85&w=900&src=aHR0cHM6Ly9zMy5tZWRpYWxvb3QuY29tL2Jsb2ctaW1hZ2VzL1ZQUC1JbWFnZS0yNS5qcGVnP210aW1lPTIwMTgxMDE4MTgyNDA5";
    String _p4 =
        "https://img.glyphs.co/img?src=aHR0cHM6Ly9zMy5tZWRpYWxvb3QuY29tL3Jlc291cmNlcy9WZWN0b3ItVGV4dHVyZXMtZm9yLUlsbHVzdHJhdG9yLVByZXZpZXctMS5qcGc&q=90&enlarge=true&h=1036&w=1600";
    return new Container(
//      margin: new EdgeInsets.all(8.0),
      padding: new EdgeInsets.only(top: 8.0, left: 16.0, right: 16.0),
      child:
          new Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, //对齐方式：平均间隔
              children: [
            new Column(
              children: <Widget>[
                new CircleAvatar(
                  radius: 26.0,
                  backgroundImage: new NetworkImage(_p1),
                ),
                new Padding(padding: const EdgeInsets.only(top: 8.0)),
                new Text("需求大厅")
              ],
            ),
            new Column(
              children: <Widget>[
                new CircleAvatar(
                  radius: 26.0,
                  backgroundImage: new NetworkImage(_p2),
                ),
                new Padding(padding: const EdgeInsets.only(top: 8.0)),
                new Text("技能大厅")
              ],
            ),
            new Column(
              children: <Widget>[
                new CircleAvatar(
                  radius: 26.0,
                  backgroundImage: new NetworkImage(_p3),
                ),
                new Padding(padding: const EdgeInsets.only(top: 8.0)),
                new Text("疑难解答")
              ],
            ),
            new Column(
              children: <Widget>[
                new CircleAvatar(
                  radius: 26.0,
                  backgroundImage: new NetworkImage(_p4),
                ),
                new Padding(padding: const EdgeInsets.only(top: 8.0)),
                new Text("寻人寻物")
              ],
            ),
          ]),
    );
  }

  Widget _creatDevider() {
    return new Container(
      height: 10.0,
      color: Colors.black12,
      margin: new EdgeInsets.only(left: 16.0, right: 16.0),
    );
  }

  Widget _creatTipView() {
    return new Container(
      height: 32.0,
      color: Colors.white,
      alignment: Alignment.center,
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text(
            "—",
            style: new TextStyle(color: Colors.lightBlueAccent),
          ),
          new Padding(padding: new EdgeInsets.only(right: 10.0)),
          new Icon(
            Icons.card_membership,
            color: Colors.lightBlueAccent,
          ),
          new Padding(padding: new EdgeInsets.only(right: 10.0)),
          new Text("优质商家", style: new TextStyle(color: Colors.lightBlueAccent)),
          new Padding(padding: new EdgeInsets.only(right: 10.0)),
          new Text("—", style: new TextStyle(color: Colors.lightBlueAccent)),
        ],
      ),
    );
  }

  Widget _creatTip2View() {
    return new Container(
      height: 32.0,
      color: Colors.white,
      alignment: Alignment.center,
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text(
            "—",
            style: new TextStyle(color: Colors.redAccent),
          ),
          new Padding(padding: new EdgeInsets.only(right: 10.0)),
          new Text("安装服务", style: new TextStyle(color: Colors.redAccent)),
          new Padding(padding: new EdgeInsets.only(right: 10.0)),
          new Text("—", style: new TextStyle(color: Colors.redAccent)),
        ],
      ),
    );
  }

  Widget _creatListView() {
    List<Widget> list = new List();

    var data = dummyData;

    data.forEach((item) {
      list.add(new Column(
        children: <Widget>[
          new Divider(
            height: 10.0,
          ),
          new ListTile(
            leading: new CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              backgroundImage: new NetworkImage(item.avatarUrl),
            ),
            title: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(
                  item.name,
                  style: new TextStyle(fontWeight: FontWeight.bold),
                ),
                new Text(
                  item.time,
                  style: new TextStyle(color: Colors.grey, fontSize: 14.0),
                ),
              ],
            ),
            subtitle: new Container(
              padding: const EdgeInsets.only(top: 5.0),
              child: new Text(
                item.message,
                style: new TextStyle(color: Colors.grey, fontSize: 15.0),
              ),
            ),
          )
        ],
      ));
    });
    return   new Column(
      children: list,
    );
  }
}

class Custom extends StatefulWidget {
  String text;

  Custom({String text}) {
    this.text = text;
  }

  @override
  State<StatefulWidget> createState() => new _CustomWidget(text: text);
}

class _CustomWidget extends State<Custom> {
  String text;

  _CustomWidget({String text}) {
    this.text = text;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Stack(
      children: <Widget>[
        new Image.network(
          text,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.fill,
        )
      ],
    );
  }
}
