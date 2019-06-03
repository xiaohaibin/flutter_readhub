import 'package:flutter/material.dart';
import 'package:flutter_readhub/common/style/GSYStyle.dart';
import 'package:flutter_readhub/net/HttpUtils.dart';
import 'package:flutter_readhub/net/Api.dart';
import 'package:flutter_readhub/common/model/topic_model.dart';
import 'dart:convert';

import 'package:flutter_readhub/wigdet/GSYCardItem.dart';
import 'package:flutter_readhub/wigdet/GSYListState.dart';
import 'package:flutter_readhub/wigdet/GSYPullLoadWidget.dart';

/**
 * 热门话题
 */
class TabBarPageHotTopic extends StatefulWidget {
  @override
  _TabBarPageHotTopicState createState() => _TabBarPageHotTopicState();
}

class _TabBarPageHotTopicState extends State<TabBarPageHotTopic>
    with
        AutomaticKeepAliveClientMixin<TabBarPageHotTopic>,
        GSYListState<TabBarPageHotTopic> {
  List<Data> data = new List();
  String lastCuror = "";

  Widget _buildList() {
    return new ListView.builder(
//      padding: const EdgeInsets.all(8.0),
      itemBuilder: (context, i) {
        return _builCard(i,data[i].title, data[i].summary);
      },
      itemCount: data.length,
    );
  }

  Widget _builCard(int index,String title, String content) {
    if (pullLoadWidgetControl.dataList.length == 0) {
      return null;
    }
    var data = pullLoadWidgetControl.dataList;
    return new GSYCardItem(
      child: ListTile(
        onTap: () {
//          _launchURL(itemUrl, context);
        },
        title: Padding(
          child: Text(
            data[index].title,
            style: TextStyle(color: Colors.black, fontSize: 15.0),
          ),
          padding: EdgeInsets.only(top: 10.0),
        ),
        subtitle: Column(
          children: <Widget>[
            Padding(
              child: Text(data[index].summary,
                  style: TextStyle(color: Colors.black54, fontSize: 12.0)),
              padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
            )
          ],
        ),
      ),
    );
  }

  Widget _builCardTo(int index) {
    if (pullLoadWidgetControl.dataList.length == 0) {
      return null;
    }
    var data = pullLoadWidgetControl.dataList;
    return new GSYCardItem(
      child: ListTile(
        onTap: () {
//          _launchURL(itemUrl, context);
        },
        title: Padding(
          child: Text(
            data[index].title,
            style: TextStyle(color: Colors.black, fontSize: 15.0),
          ),
          padding: EdgeInsets.only(top: 10.0),
        ),
        subtitle: Column(
          children: <Widget>[
            Padding(
              child: Text(data[index].summary,
                  style: TextStyle(color: Colors.black54, fontSize: 12.0)),
              padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
            )
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context); // See AutomaticKeepAliveClientMixin.
    return new Scaffold(
      body: GSYPullLoadWidget(
        pullLoadWidgetControl,
        (BuildContext context, int index) => _builCardTo(index),
        handleRefresh,
        onLoadMore,
        refreshKey: refreshIndicatorKey,
      ),
//      floatingActionButton: FloatingActionButton(
//        onPressed: _getData,
//        child: Icon(Icons.arrow_upward),
//      ), // This
    );
  }

  @override
  bool get isRefreshFirst => true;

  @override
  requestRefresh() async {
    return await _getData();
  }

  @override
  requestLoadMore() async {
    return await _getNewsMore(lastCuror, 10);
  }

  _getData() async {
    var res=await HttpManager.netFetch(Api.HOST + "/topic", null, null, null);
    setState(() {
      TopicModel topicModel = TopicModel.fromJson(res.data);
      data = topicModel.data;
      lastCuror = data.last.order.toString();
      clearData();
      pullLoadWidgetControl.dataList.addAll(topicModel.data);
    });
  }

  _getNewsMore(String lastCursor, int pageSize) async {
    var res=await HttpManager.netFetch(
        Api.HOST + "/topic" + "?lastCursor=" + lastCursor + "&pagesize=10",
        null,
        null,
        null);
    setState(() {
      TopicModel topicModel = TopicModel.fromJson(res.data);
      data.addAll(topicModel.data);
      lastCuror = data.last.order.toString();
      pullLoadWidgetControl.dataList.addAll(topicModel.data);
    });
  }
}
