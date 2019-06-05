import 'package:flutter/material.dart';
import 'package:flutter_readhub/common/model/news_model.dart';
import 'package:flutter_readhub/common/utils/CommonUtils.dart';
import 'package:flutter_readhub/net/Api.dart';
import 'package:flutter_readhub/net/HttpUtils.dart';
import 'package:flutter_readhub/wigdet/GSYCardItem.dart';
import 'package:flutter_readhub/wigdet/GSYListState.dart';
import 'package:flutter_readhub/wigdet/GSYPullLoadWidget.dart';

/**
 * 开发者
 */
class TabBarPageDeveloper extends StatefulWidget {
  @override
  _TabBarPageDeveloper createState() => _TabBarPageDeveloper();
}

class _TabBarPageDeveloper extends State<TabBarPageDeveloper>
    with
        AutomaticKeepAliveClientMixin<TabBarPageDeveloper>,
        GSYListState<TabBarPageDeveloper> {
  List<Data> data = new List();
  String lastCuror = "";

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
  bool get isRefreshFirst => true;

  @override
  requestRefresh() async {
    return await _getData();
  }

  @override
  requestLoadMore() async {
    return await _getNewsMore(lastCuror);
  }

  _getData() async {
    var res =
        await HttpManager.netFetch(Api.HOST + "/technews", null, null, null);
    setState(() {
      NewsModel topicModel = NewsModel.fromJson(res.data);
      data = topicModel.data;
      lastCuror = CommonUtils.getTimeStamp(data.last.publishDate);
      clearData();
      pullLoadWidgetControl.dataList.addAll(topicModel.data);
    });
  }

  _getNewsMore(String lastCursor) async {
    var res = await HttpManager.netFetch(
        Api.HOST + "/technews" + "?lastCursor=" + lastCursor + "&pagesize=10",
        null,
        null,
        null);
    setState(() {
      NewsModel topicModel = NewsModel.fromJson(res.data);
      data.addAll(topicModel.data);
      lastCuror = CommonUtils.getTimeStamp(data.last.publishDate);
      pullLoadWidgetControl.dataList.addAll(topicModel.data);
    });
  }
}
