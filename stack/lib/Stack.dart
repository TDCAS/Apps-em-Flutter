import 'package:flutter/material.dart';

class Stackpilha extends StatefulWidget {
  @override
  State createState() => new StackpilhaState();
}

class StackpilhaState extends State<Stackpilha> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: new Scaffold(
      appBar: AppBar(title: new Text("Stack")),
      //Corpo do App
      body: Stack(
        children: [
          // Primeiro elemento (fica abeixo dos demais)
          //blocos em camadas
          new Container(
              margin: EdgeInsets.all(10),
              color: Colors.blueAccent,
              padding: EdgeInsets.all(20),
              width: 300,
              height: 400,
              child: new Text(
                "Stack 1",
                style: new TextStyle(
                  fontSize: 32,
                ),
              )),
          new Container(
            margin: EdgeInsets.all(75),
            color: Colors.greenAccent,
            padding: EdgeInsets.all(20),
            width: 300,
            height: 400,
            child: new Text("Stack 2"),
          ),
        ],
      ),
      //menu lateral
      drawer: new Drawer(
          //ListView (itens do menu)
          ),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.logout), label: "Sair"),
        ],
      ),
    ));
  }
}
