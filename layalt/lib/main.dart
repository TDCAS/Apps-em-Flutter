import 'package:flutter/material.dart';
import 'package:layalt/Layout.dart';

void main() => runApp(MyLayout());

class MyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: "Layout Flutter",
        theme: new ThemeData(primarySwatch: Colors.red),
        home: Scaffold(body: Layout()));
  }
}
