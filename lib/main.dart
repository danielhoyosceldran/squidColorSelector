import 'package:flutter/material.dart';
import './pages/homePage.dart';
import './pages/settingsPage.dart';
import './pages/favoritesPage.dart';
import './pages/palettesPage.dart';
import './pages/createPage.dart';
import './pages/profilePage.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MyHomePage(),
        debugShowCheckedModeBanner: false,
      routes: {
          '/homePage': (context) => const MyHomePage(),
          '/settingsPage': (context) => const SettingsPage(),
          '/favoritesPage': (context) => const FavoritesPage(),
          '/profilePage': (context) => const ProfilePage(),
          '/createPage': (context) => const CreatePage(),
          '/palettesPage': (context) => const PalettesPage(),
      },
    );
  }
}