// main.dart

import 'package:flutter/material.dart';
import 'package:flutter101/components/appbar.dart';
import 'package:flutter101/components/navbottom.dart';
import 'package:flutter101/pages/event.dart';
import 'package:flutter101/pages/homepage.dart';
import 'package:flutter101/pages/service.dart';

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
  String appBarTitle = "Ilkomerz"; // Judul default

  PageController _pageController = PageController();
  int currentIndexPage = 1;

  void switchPage(int index) {
    setState(() {
      currentIndexPage = index;
      // Mengubah judul AppBar berdasarkan halaman yang aktif
      if (index == 0) {
        setAppBarTitle("Event");
      } else if (index == 1) {
        setAppBarTitle("Homepage");
      } else if (index == 2) {
        setAppBarTitle("Service");
      }
    });
  }

  void setAppBarTitle(String title) {
    setState(() {
      appBarTitle = title;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: HeaderApp(
          changedTittle: (title) {
            setAppBarTitle(title);
          },
        ),
        backgroundColor: Colors.blue[900],
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: switchPage,
        children: [
          Event(),
          Homepage(),
          Service(),
        ],
      ),
      bottomNavigationBar: NavBottom(
        pageController: _pageController,
        currentIndex: currentIndexPage,
      ),
    );
  }
}
