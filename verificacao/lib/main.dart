import 'package:flutter/material.dart';
import 'package:stack/validacao.dart';

void main() => runApp(ValidacaoApp());

class ValidacaoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Stack",
      theme: new ThemeData(primarySwatch: Colors.blue),
      home: new Scaffold(
        body: Validacao(),
      ),
    );
  }
}
