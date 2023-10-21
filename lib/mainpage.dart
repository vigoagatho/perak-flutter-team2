import 'package:aninext/pages/downloadpage.dart';
import 'package:aninext/pages/homepage.dart';
import 'package:aninext/pages/profilepage.dart';
import 'package:aninext/pages/searchpage.dart';
import 'package:aninext/pages/uploadpage.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    Homepage(),
    SearchPage(),
    UploadPage(),
    DownloadPage(),
    ProfilePage()
  ];

  int currentIndex=0;

  void onTap(int index){
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        currentIndex: currentIndex,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.redAccent,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'upload'),
          BottomNavigationBarItem(icon: Icon(Icons.download), label: 'download'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile'),
        ]
      ),
    );
  }
}