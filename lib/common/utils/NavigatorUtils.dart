import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_readhub/wigdet/GSYWebView.dart';
import 'package:flutter_readhub/wigdet/PhotoViewPage.dart';

/**
 * 导航栏
 */
class NavigatorUtils {
  ///替换
  static pushReplacementNamed(BuildContext context, String routeName) {
    Navigator.pushReplacementNamed(context, routeName);
  }

  ///切换无参数页面
  static pushNamed(BuildContext context, String routeName) {
    Navigator.pushNamed(context, routeName);
  }

//  ///通用列表
//  static gotoCommonList(
//      BuildContext context, String title, String showType, String dataType,
//      {String userName, String reposName}) {
//    NavigatorRouter(
//        context,
//        new CommonListPage(
//          title,
//          showType,
//          dataType,
//          userName: userName,
//          reposName: reposName,
//        ));
//  }

  ///全屏Web页面
  static Future goGSYWebView(BuildContext context, String url, String title) {
    return NavigatorRouter(context, new GSYWebView(url, title));
  }

  ///图片预览
  static gotoPhotoViewPage(BuildContext context, String url) {
    NavigatorRouter(context, new PhotoViewPage(url));
  }

  static NavigatorRouter(BuildContext context, Widget widget) {
    return Navigator.push(
        context, new CupertinoPageRoute(builder: (context) => widget));
  }
}
