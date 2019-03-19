import 'package:flutter/material.dart';
import 'package:flutter_readhub/common/style/GSYStyle.dart';
import 'package:flutter_readhub/common/utils/CommonUtils.dart';
import 'package:share/share.dart';

/**
 * Created by guoshuyu
 * Date: 2018-07-26
 */
class GSYCommonOptionWidget extends StatelessWidget {
  final List<GSYOptionModel> otherList;

  final OptionControl control;

  GSYCommonOptionWidget(this.control, {this.otherList});

  _renderHeaderPopItem(List<GSYOptionModel> list) {
    return new PopupMenuButton<GSYOptionModel>(
      child: new Icon(GSYICons.MORE),
      onSelected: (model) {
        model.selected(model);
      },
      itemBuilder: (BuildContext context) {
        return _renderHeaderPopItemChild(list);
      },
    );
  }

  _renderHeaderPopItemChild(List<GSYOptionModel> data) {
    List<PopupMenuEntry<GSYOptionModel>> list = new List();
    for (GSYOptionModel item in data) {
      list.add(PopupMenuItem<GSYOptionModel>(
        value: item,
        child: new Text(item.name),
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    List<GSYOptionModel> list = [
      new GSYOptionModel('浏览器打开', '浏览器打开', (model) {
        CommonUtils.launchOutURL(control.url, context);
      }),
      new GSYOptionModel('复制链接', '复制链接', (model) {
        CommonUtils.copy(control.url ?? "", context);
      }),
      new GSYOptionModel('分享', '分享', (model) {
        Share.share('分享至ReadHub' + control.url ?? "");
      }),
    ];
    if (otherList != null && otherList.length > 0) {
      list.addAll(otherList);
    }
    return _renderHeaderPopItem(list);
  }
}

class OptionControl {
  String url = GSYConstant.app_default_share_url;
}

class GSYOptionModel {
  final String name;
  final String value;
  final PopupMenuItemSelected<GSYOptionModel> selected;

  GSYOptionModel(this.name, this.value, this.selected);
}
