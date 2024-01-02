import 'package:flutter/material.dart';

class LatihanStateful extends StatefulWidget {
  const LatihanStateful({Key? key}) : super(key: key);

  @override
  State<LatihanStateful> createState() => _LatihanStatefulState();
}

class _LatihanStatefulState extends State<LatihanStateful> {
  int nomor = 0;
  void tambahNomor() {
    setState(() {
      nomor++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('stateful',
              style: TextStyle(
                  color: Colors.white38,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic)),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(nomor.toString(), style: TextStyle(fontSize: 30 + nomor.toDouble()),),
              Container(
                  margin: EdgeInsets.only(top: 30),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.green[100]),
                    onPressed: tambahNomor,
                    child: Text('tambah nomor',
                        style: TextStyle(
                            color: Colors.lightGreen,
                            fontWeight: FontWeight.bold)),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}