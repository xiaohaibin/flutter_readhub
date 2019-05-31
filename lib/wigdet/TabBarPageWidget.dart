import 'package:flutter/material.dart';
import 'package:flutter_readhub/page/TabBarPageBlockchain.dart';
import 'package:flutter_readhub/page/TabBarPageNews.dart';
import 'package:flutter_readhub/page/TabBarPageDeveloper.dart';
import 'package:flutter_readhub/wigdet/GSYTabBarWidget.dart';
import 'package:flutter_readhub/page/TabBarPageHotTopic.dart';

class TabBarPageWidget extends StatefulWidget {
  @override
  _TabBarPageWidgetState createState() => _TabBarPageWidgetState();
}

class _TabBarPageWidgetState extends State<TabBarPageWidget> {
  final PageController topPageControl = new PageController();

  final List<String> tab = [
    "热门话题",
    "科技动态",
    "开发者",
    "区块链",
  ];

  _renderTab() {
    List<Widget> list = new List();
    for (int i = 0; i < tab.length; i++) {
      list.add(new FlatButton(
          onPressed: () {
            topPageControl.jumpTo(MediaQuery.of(context).size.width * i);
          },
          child: new Text(
            tab[i],
            maxLines: 1,
            style: new TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          )));
    }
    return list;
  }

  _renderPage() {
    return [
      new TabBarPageHotTopic(),
      new TabBarPageNews(),
      new TabBarPageDeveloper(),
      new TabBarPageBlockchain(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new GSYTabBarWidget(
        type: GSYTabBarWidget.TOP_TAB,
        tabItems: _renderTab(),
        tabViews: _renderPage(),
        topPageControl: topPageControl,
        backgroundColor: Colors.lightBlue,
        indicatorColor: Colors.white,
        title: new Text("ReadHub"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.arrow_upward),
      ),
    );
  }
}
