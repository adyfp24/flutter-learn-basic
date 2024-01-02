import 'package:flutter/material.dart';

class LatihanLayout extends StatelessWidget {
  const LatihanLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
          child: Scaffold(
        appBar: AppBar(title: Text('layouting')),
        body: Container(
          margin: EdgeInsets.only(top: 20),
          alignment: Alignment.center,
          child: Column(
            children: [
              Container(
                child: Text('container1'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text('container2'),
                  ),
                  Container(
                    child: Text('container3'),
                  )
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}