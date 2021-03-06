import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      theme:
          ThemeData(brightness: Brightness.light, primaryColor: Colors.purple),
      title: "IMC",
      home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

String calculoImc(double calculoIMC) {
  if (calculoIMC < 16) {
    return "Magreza Grave";
  } else if (calculoIMC >= 16 && calculoIMC < 17) {
    return "Magreza Moderada";
  } else if (calculoIMC >= 17 && calculoIMC < 18.5) {
    return "Magreza Leve";
  } else if (calculoIMC >= 18.5 && calculoIMC < 25) {
    return "Saudável";
  } else if (calculoIMC >= 25 && calculoIMC < 30) {
    return "Sobrepeso";
  } else if (calculoIMC >= 30 && calculoIMC < 35) {
    return "Obesidade Grau I";
  } else if (calculoIMC >= 35 && calculoIMC < 40) {
    return "Obesidade Grau II (severa)";
  } else {
    return "Obesidade Grau III (mórbida)";
  }
}

class _HomeState extends State<Home> {
  final valorPeso = TextEditingController();
  final valorAltura = TextEditingController();
  double peso = 0.0;
  double altura = 0.0;
  double calculoIMC = 0.0;
  String classificacao = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("IMC",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white))),
        body: Container(
            padding: EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                      'https://images.unsplash.com/photo-1522844990619-4951c40f7eda?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80'),
                  SizedBox(
                    height: 15.0,
                  ),
                  TextField(
                    controller: valorPeso,
                    keyboardType:
                        TextInputType.numberWithOptions(decimal: true),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            gapPadding: 01.0,
                            borderSide: BorderSide()),
                        labelText: "Digite o seu PESO"),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  TextField(
                    controller: valorAltura,
                    keyboardType:
                        TextInputType.numberWithOptions(decimal: true),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            gapPadding: 01.0,
                            borderSide: BorderSide()),
                        labelText: "Digite a sua ALTURA"),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          final double valorPes = double.parse(valorPeso.text);
                          final double valorAlt =
                              double.parse(valorAltura.text);
                          calculoIMC = valorPes / (valorAlt * valorAlt);
                          classificacao = calculoImc(calculoIMC);
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.pressed))
                              return Colors.green;
                            return Colors
                                .purple; // Use the component's default.
                          },
                        ),
                      ),
                      child: Text(
                        ' Cotação',
                        style: TextStyle(color: Colors.white),
                      )),
                  SizedBox(
                    height: 15.0,
                  ),
                  Text("Classificação: $classificacao",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 15.0,
                  ),
                ],
              ),
            )));
  }
}
