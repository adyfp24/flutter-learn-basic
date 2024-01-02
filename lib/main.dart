// main.dart

import 'package:flutter/material.dart';
import 'package:flutter101/components/navbottom.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  PageController _pageController = PageController();
  int currentIndexPage = 1;

  void switchPage(int index){
    setState(() {
      currentIndexPage = index;      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ilkomerz', style: TextStyle(color: Colors.black54, fontSize: 25, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.white,
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: switchPage,
        children: [
          AboutPage(),
          HomePage(),
          TokoPage(),
        ],
      ),
      bottomNavigationBar: NavBottom(
        pageController: _pageController,
        currentIndex: currentIndexPage,
      ),
    );
  }
}
