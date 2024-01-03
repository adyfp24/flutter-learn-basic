import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      color: Colors.white70,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 0),
              child: Container(
                color: Colors.red[50],
                margin: EdgeInsets.only(bottom: 15, top: 15),
                alignment: Alignment.topLeft,
                child: Text(
                  'Hi Ady, mari berdiskusi!',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              )),
          Container(
            color: Colors.red[50],
            height: 100,
            margin: EdgeInsets.only(bottom: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  '> Forum sesuai minat Anda',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
                ),
                Container(
                  height: 70,
                  color: Colors.red[200],
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
