import 'package:flutter/material.dart';
import 'package:flutter_readhub/common/model/news_model.dart';
import 'package:flutter_readhub/net/Api.dart';
import 'package:flutter_readhub/net/HttpUtils.dart';
import 'package:flutter_readhub/wigdet/GSYCardItem.dart';

class TabBarPageNews extends StatefulWidget {
  @override
  _TabBarPageNews createState() => _TabBarPageNews();
}

class _TabBarPageNews extends State<TabBarPageNews>
    with AutomaticKeepAliveClientMixin {
  List<Data> data = new List();

  Widget _buildSuggestions() {
    return new ListView.builder(
//      padding: const EdgeInsets.all(8.0),
      itemBuilder: (context, i) {
        return _builCard(data[i].title, data[i].summary);
      },
      itemCount: data.length,
    );
  }

  Widget _builCard(String data, String content) {
    return new GSYCardItem(
      child: ListTile(
        onTap: () {
//          _launchURL(itemUrl, context);
        },
        title: Padding(
          child: Text(
            data,
            style: TextStyle(color: Colors.black, fontSize: 15.0),
          ),
          padding: EdgeInsets.only(top: 10.0),
        ),
        subtitle: Column(
          children: <Widget>[
            Padding(
              child: Text(content,
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
      body: _buildSuggestions(),
      floatingActionButton: FloatingActionButton(
        onPressed: _getData,
        child: Icon(Icons.arrow_upward),
      ), // This
    );
  }

  @override
  void initState() {
    super.initState();
    _getData();
  }

  _getData() async {
    var res = await HttpManager.netFetch(Api.HOST + "/news", null, null, null);
    setState(() {
      NewsModel topicModel = NewsModel.fromJson(res.data);
      data = topicModel.data;
    });
  }
}
