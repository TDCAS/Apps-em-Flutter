import 'package:flutter/material.dart';
import 'package:stack/Stack.dart';

void main() => runApp(StackApp());

class StackApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Stack",
      theme: new ThemeData(primarySwatch: Colors.blue),
      home: new Scaffold(
        body: Stackpilha(),
      ),
    );
  }
}
