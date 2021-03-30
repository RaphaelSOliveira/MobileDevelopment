import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      theme:
          ThemeData(brightness: Brightness.light, primaryColor: Colors.purple),
      title: "Etanol ou Gasolina",
      home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

String escolheCombustivel(double calculoGasEt) {
  if (calculoGasEt < 0.7) {
    return "Escolha o Etanol!";
  } else {
    return "Escolha a Gasolina!";
  }
}

class _HomeState extends State<Home> {
  final valorGasolina = TextEditingController();
  final valorEtanol = TextEditingController();
  double gasolina = 0.0;
  double etanol = 0.0;
  double calculoGasEt = 0.0;
  String resultado = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Etanol ou Gasolina?",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white))),
        body: Container(
            padding: EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                      'https://images.unsplash.com/photo-1489596162121-4a8e544d6de0?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=80'),
                  SizedBox(
                    height: 15.0,
                  ),
                  TextField(
                    controller: valorGasolina,
                    keyboardType:
                        TextInputType.numberWithOptions(decimal: true),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            gapPadding: 01.0,
                            borderSide: BorderSide()),
                        labelText: "Preço do Litro - Gasolina"),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  TextField(
                    controller: valorEtanol,
                    keyboardType:
                        TextInputType.numberWithOptions(decimal: true),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            gapPadding: 01.0,
                            borderSide: BorderSide()),
                        labelText: "Preço do Litro - Etanol"),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          final double valorGasol =
                              double.parse(valorGasolina.text);
                          final double valorEtan =
                              double.parse(valorEtanol.text);
                          calculoGasEt = valorEtan / valorGasol;
                          resultado = escolheCombustivel(calculoGasEt);
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
                  Text("$resultado",
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
