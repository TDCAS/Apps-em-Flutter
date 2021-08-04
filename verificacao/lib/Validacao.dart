import 'package:flutter/material.dart';

class Validacao extends StatefulWidget {
  @override
  State createState() => new ValidacaoState();
}

class ValidacaoState extends State<Validacao> {
  // chave
  final chave = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: new Scaffold(
      appBar: AppBar(title: new Text("Stack")),
      //Corpo do App
      body: new Form(
        key: chave,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            new TextFormField(validator: (value) {
              if (value == null || value.isEmpty) {
                return "Por favor preencha os campos corretamente";
              }

              return null;
            }),
            new Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: new ElevatedButton(
                  child: new Text("Enviar"),
                  onPressed: () {
                    //verifica se o retorno do formulario é valido
                    if (chave.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Processando o pedido")));
                    }
                  },
                )),
          ],
        ),
      ),
      //menu lateral

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.logout), label: "Sair"),
        ],
      ),
    ));
  }
}
