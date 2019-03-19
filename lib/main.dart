import 'package:flutter/material.dart';
import 'package:flutter_readhub/wigdet/TabBarPageWidget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ReadHub',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new TabBarPageWidget(),
    );
  }

}
