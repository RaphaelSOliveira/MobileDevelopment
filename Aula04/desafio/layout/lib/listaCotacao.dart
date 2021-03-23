import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListaCotacao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    home:
    HomeSecond();
  }
}

class HomeSecond extends StatefulWidget {
  @override
  _HomeSecondState createState() => _HomeSecondState();
}

class _HomeSecondState extends State<HomeSecond> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Resultados"),
        ),
        body: Container(
            padding: EdgeInsets.all(20),
            child: Center(
              child: Column(
                children: [
                  Text(
                    'R\$ 1,0',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 40),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            gapPadding: 01.0,
                            borderSide: BorderSide()),
                        labelText: "Euro: "),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            gapPadding: 01.0,
                            borderSide: BorderSide()),
                        labelText: "Dolar: "),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            gapPadding: 01.0,
                            borderSide: BorderSide()),
                        labelText: "Libra: "),
                  ),
                ],
              ),
            )));
  }
}
