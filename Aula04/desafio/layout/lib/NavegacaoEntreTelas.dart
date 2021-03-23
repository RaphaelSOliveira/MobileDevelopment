import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "App",
      home: Tela1(),
    ));

class Tela1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Tela 1"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Proxima Tela"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Tela2(100.5, 120.5)),
            );
          },
        ),
      ),
    ));
  }
}

class Tela2 extends StatelessWidget {
  final double _resultado;
  final double _resultado2;

  Tela2(this._resultado, this._resultado2);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela 2"),
      ),
      body: Center(
          child: ElevatedButton(
        child: Text('Tela $_resultado :: $_resultado2'),
        onPressed: () {
          Navigator.pop(context);
        },
      )),
    );
  }
}
