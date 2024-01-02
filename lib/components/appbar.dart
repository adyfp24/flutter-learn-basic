import 'package:flutter/material.dart';

class HeaderApp extends StatefulWidget {
  final ValueChanged<String>? changedTittle;
  const HeaderApp({Key? key, this.changedTittle}) : super(key: key);

  @override
  State<HeaderApp> createState() => _HeaderAppState();
}

class _HeaderAppState extends State<HeaderApp> {
  String appBarTittle = 'Ilkomerz';

  void setAppBarTitle(String tittle){
    setState(() {
      appBarTittle = tittle;
      if (widget.changedTittle != null) {
        widget.changedTittle!(appBarTittle);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text(appBarTittle,
        style: TextStyle(
            color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold));
  }
}
