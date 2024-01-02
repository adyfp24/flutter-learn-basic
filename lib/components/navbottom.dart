// navbottom.dart

import 'package:flutter/material.dart';

class NavBottom extends StatefulWidget {
  final PageController pageController;
  final int currentIndex;

  NavBottom({required this.pageController, required this.currentIndex});

  @override
  _NavBottomState createState() => _NavBottomState();
}

class _NavBottomState extends State<NavBottom> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: widget.currentIndex,
      onTap: (index) {
        widget.pageController.animateToPage(
          index,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      },
      backgroundColor: Colors.blue[900], // Ganti warna latar belakang
      selectedItemColor: Colors.yellow, // Ganti warna label dan ikon aktif
      unselectedItemColor: Colors.white, // Ganti warna label dan ikon tidak aktif
      selectedFontSize: 14.0, // Ukuran font label aktif
      unselectedFontSize: 12.0, // Ukuran font label tidak aktif
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.event, size: 24), // Ganti ukuran ikon
          label: 'Event',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home, size: 24), // Ganti ukuran ikon
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.miscellaneous_services, size: 24), // Ganti ukuran ikon
          label: 'Service',
        ),
      ],
    );
  }
}
