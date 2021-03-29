import 'listaCotacao.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      theme:
          ThemeData(brightness: Brightness.light, primaryColor: Colors.purple),
      title: "Cotação do Real",
      home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final valorCotacao = TextEditingController();
  String cotacao = "0.0";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Cotação do Real",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white))),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Image.network(
                  'https://images.unsplash.com/photo-1583574928108-53be39420a8d?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80'),
              SizedBox(
                height: 15.0,
              ),
              TextField(
                controller: valorCotacao,
                onSubmitted: (text) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return HomeSecond();
                      },
                    ),
                  );
                },
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        gapPadding: 01.0,
                        borderSide: BorderSide()),
                    labelText: "Valor em Reais"),
              ),
              SizedBox(
                height: 15.0,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return HomeSecond();
                        },
                      ),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed))
                          return Colors.green;
                        return Colors.purple; // Use the component's default.
                      },
                    ),
                  ),
                  child: Text(
                    ' Cotação',
                    style: TextStyle(color: Colors.white),
                  )),
              Text("Valor Cotação: $cotacao")
            ],
          ),
        ));
  }
}
