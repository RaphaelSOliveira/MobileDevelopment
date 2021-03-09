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
          child: Center(
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                        child: Image.asset('assets/images/bandeiraalemanha.png',
                            height: 60, width: 60),
                        margin: EdgeInsets.only(top: 20.0, bottom: 20.0)),
                  ],
                ),
                Column(
                  children: [
                    Container(
                        child:
                            Text('Alemanha', style: TextStyle(fontSize: 20.0)),
                        margin: EdgeInsets.only(
                            top: 20.0, bottom: 20.0, left: 5.0, right: 5.0)),
                    Text('00', style: TextStyle(fontSize: 30.0))
                  ],
                ),
                Column(
                  children: [
                    Container(
                        child: Text("X", style: TextStyle(fontSize: 60.0)),
                        margin: EdgeInsets.only(
                            top: 20.0, bottom: 20.0, left: 5.0, right: 5.0))
                  ],
                ),
                Column(
                  children: [
                    Container(
                        child: Text('Brasil', style: TextStyle(fontSize: 20.0)),
                        margin: EdgeInsets.only(
                            top: 20.0, bottom: 20.0, left: 5.0, right: 5.0)),
                    Text('00', style: TextStyle(fontSize: 30.0))
                  ],
                ),
                Column(
                  children: [
                    Container(
                        child: Image.asset('assets/images/bandeirabrasil.png',
                            height: 60, width: 60),
                        margin: EdgeInsets.only(top: 20.0, bottom: 20.0))
                  ],
                )
              ],
            ),
          )),
    ),
  ));
}
