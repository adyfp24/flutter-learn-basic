import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter101/statefull.dart';

import 'package:flutter101/stateless.dart';

void main() {
  runApp(LatihanStateful());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[50],
          title: Text('aplikasi ady', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 27.5, fontFamily: 'Poppins', color: Colors.blue[100])),
        ),
        body: Center(
          child: Column(
            children: [Container(
              color: Colors.deepOrange,
              width: 200,
              height: 100,
              padding: EdgeInsets.all(10.0),
            ), Container(
              color: Colors.deepPurple,
              width: 200,
              height: 100,
              margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
            )],
          ),
        ),
      ),
    );
  }
}