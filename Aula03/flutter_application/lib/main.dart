import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Olá Flutter 2",
    home: Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: "menu de navegação",
          onPressed: null,
        ),
        title: Text("Minha Aplicação",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.yellow.shade500,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Buscar',
            onPressed: null,
          ),
          IconButton(
            icon: Icon(Icons.add),
            tooltip: 'Buscar',
            onPressed: null,
          ),
        ],
      ),
      body: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Image.network(
                'https://images.unsplash.com/photo-1614886750264-afed539cf2bb?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80',
                width: 700,
                height: 400,
              ),
              SizedBox(height: 15.0),
              Text("Cachoeira Pavuna",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 25.0)),
              SizedBox(height: 15.0),
              Text(
                  "Para ir até a Cachoeira da Pavuna, que está localizada na Fazenda da Pavuna, basta entrar pela rodovia Marechal Rondon",
                  textAlign: TextAlign.justify),
              SizedBox(height: 15.0),
              Text(
                "ASSINATURA",
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
              /*Row(
            children: [
              Icon(Icons.add),
              Icon(Icons.add),
              Icon(Icons.add),
              Icon(Icons.add),
            ],
          )*/
            ],
          )),
    ),
  ));
}
