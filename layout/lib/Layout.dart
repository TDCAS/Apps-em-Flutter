import 'package:flutter/material.dart';

class Layout extends StatefulWidget {
  @override
  State createState() => new LayoutState();
}

class LayoutState extends State<Layout> {
  Row criarRow(String texto) {
    return new Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        new Container(
          margin: EdgeInsets.only(top: 10),
          child: Text(texto),
          //height: 50,
          width: 350,
          color: Colors.blueAccent,
          padding: EdgeInsets.all(15),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        //Barra do titulo
        appBar: AppBar(
          title: new Text("Layout Flutter"),
        ),

        //Menu lateral
        drawer: new Drawer(
          //itens do menu
          child: new ListView(
            padding: EdgeInsets.zero,
            //padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                  decoration: BoxDecoration(color: Colors.blue),
                  child: Text("header")),
              //primeiro intem do menu
              new ListTile(
                title: const Text("Flutter"),
                subtitle: new Text("Todo são widgets"),
                leading: Icon(Icons.flash_on),
                trailing: Icon(Icons.keyboard_arrow_right,
                    color: Colors.blue, size: 32),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              //segundo item
              new ListTile(
                title: const Text("Dart"),
                subtitle: new Text("Programs"),
                leading: Icon(Icons.access_alarm),
                trailing: Icon(Icons.keyboard_arrow_left),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),

        //Corpo do app
        body: new Column(
          children: [
            criarRow('Esta é a segunda linha'),
            criarRow("vemmmmmmm"),
            new Padding(padding: EdgeInsets.all(10)),
            new Center(
              child: ElevatedButton(
                onPressed: () {
                  final snackBar = SnackBar(
                    margin: EdgeInsets.only(top: 20),
                    content: Text('Buenas, esya snakc'),
                    duration: new Duration(milliseconds: 2555),
                    behavior: SnackBarBehavior.floating,
                    action: SnackBarAction(
                      label: 'ok',
                      onPressed: () {},
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: new Text("Mostrar Snackbar"),
              ),
            ),
          ],
        ),
        //Barra de navegação
        bottomNavigationBar: new BottomNavigationBar(items: [
          //icone do home
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "home",
          ),
          //icone  das configuraçoes
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Configuraçoes",
          ),
          //icone  do login
          BottomNavigationBarItem(
            icon: Icon(Icons.login),
            label: "Login",
          ),
        ]),
      ),
    );
  }
}
