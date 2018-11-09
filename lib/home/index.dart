import 'package:flutter/material.dart';
import 'package:flutter_huobang/home/demand_page.dart';
import 'package:flutter_huobang/home/home_page.dart';
import 'package:flutter_huobang/home/mine_page.dart';
import 'package:flutter_huobang/home/release_page.dart';
import 'package:flutter_huobang/home/skill_page.dart';
import 'package:flutter_huobang/view/NavigationIconView.dart';

class Index extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _IndexState();
}

class _IndexState extends State<Index> with TickerProviderStateMixin {
  static const double bannerHeight = 100.0;

  int _currentIndex = 0; // 当前界面的索引值
  List<NavigationIconView> _navigationViews; // 底部图标按钮区域
  List<StatefulWidget> _pageList; // 用来存放我们的图标对应的页面
  StatefulWidget _currentPage; // 当前的显示页面

  void _rebuild() {
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _navigationViews = <NavigationIconView>[
      new NavigationIconView(
          icon: new Icon(Icons.home), title: new Text("首页"), vsync: this),
      new NavigationIconView(
          icon: new Icon(Icons.event_note), title: new Text("需求"), vsync: this),
      new NavigationIconView(
          icon: new Icon(Icons.send),
          title: new Text("发布"),
          vsync: this,
          color: Colors.red),
      new NavigationIconView(
          icon: new Icon(Icons.new_releases),
          title: new Text("技能"),
          vsync: this),
      new NavigationIconView(
          icon: new Icon(Icons.person), title: new Text("我的"), vsync: this),
    ];

    for (NavigationIconView view in _navigationViews) {
      view.controller.addListener(_rebuild);
    }

    _pageList = [
      new HomePage(),
      new DemandPage(),
      new ReleasePage(),
      new SkillPage(),
      new MinePage(),
    ];

    _currentPage = _pageList[_currentIndex];
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    BottomNavigationBar bottomNavigationBar = new BottomNavigationBar(
      items: _navigationViews
          .map((NavigationIconView navigationIconView) =>
              navigationIconView.item)
          .toList(),
      currentIndex: _currentIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        setState(() {
          _navigationViews[_currentIndex].controller.reverse();
          _currentIndex = index;
          _navigationViews[_currentIndex].controller.forward();
          _currentPage = _pageList[_currentIndex];
        });
      },
    );

    return new MaterialApp(
      home: new Scaffold(
        body: new Center(child: _currentPage // 动态的展示我们当前的页面
            ),
        bottomNavigationBar: bottomNavigationBar, // 底部工具栏
      ),
      theme: new ThemeData(
        primarySwatch: Colors.blue, // 设置主题颜色
      ),
    );
  }
}
