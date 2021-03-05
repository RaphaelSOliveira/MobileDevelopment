import 'package:flutter/material.dart';

void main() {
  var materialApp = MaterialApp(
      title: "First App!",
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
          centerTitle: true,
          backgroundColor: Colors.yellow.shade500,
        ),
        body: Center(
          child: Image(
            image: //AssetImage('assets/images/img1.jpg'),
                NetworkImage(
                    'https://images.unsplash.com/photo-1614886750264-afed539cf2bb?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80'),
          ),
        ),
      ));
  runApp(materialApp);
}
