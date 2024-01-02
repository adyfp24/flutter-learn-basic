import 'package:flutter/material.dart';

class LatihanStateless extends StatelessWidget {
  const LatihanStateless({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
            child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent[100],
        title: Text(
          'stateless',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              color: Colors.black),
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Center(child: Text('container 1')),
              color: Colors.green[600],
              width: 100,
              height: 50,
              margin: EdgeInsets.only(bottom: 10, top: 10),
            ),
            Container(
              child: Center(child: Text('container 2')),
              color: Colors.green[300],
              width: 100,
              height: 50,
              margin: EdgeInsets.only(bottom: 10, top: 10),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: 'Email',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Call',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        backgroundColor: Colors.greenAccent[100],
        type: BottomNavigationBarType.fixed,
      ),
    )));
  }
}