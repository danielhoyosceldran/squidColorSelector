import 'package:flutter/material.dart';
import '../widgets/app_bar.dart';
import 'settingsPage.dart';
import 'favoritesPage.dart';
import 'palettesPage.dart';
import 'createPage.dart';
import 'profilePage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    const PalettesPage(),
    const CreatePage(),
    const ProfilePage(),
    const FavoritesPage(),
    const SettingsPage(),
  ];

  void updateIndex(int newIndex) {
    setState(() {
      _currentIndex = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomizedAppBar(),
      backgroundColor: Colors.white,
      body: Stack(children: [
        IndexedStack(
          index: _currentIndex,
          children: _pages,
        ),
        Positioned(
          bottom: 20,
          right: 20,
          left: 20,
          child: CustomizedNavigationBar(updateIndex: updateIndex, currentIndex: _currentIndex,),
        ),
      ]),
    );
  }
}









