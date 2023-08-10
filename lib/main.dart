import 'package:flutter/material.dart';
import './widgets/app_buttons.dart';
import './widgets/app_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: MyHomePage(title: 'Flutter Demo Home Page'),
        debugShowCheckedModeBanner: false
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Container(
            child: Column(
              children: [
                CustomizedButton(backgroundColor: Colors.white,
                    borderColor: Colors.black,
                    textColor: Colors.black,
                    xSize: 60,
                    ySize: 30,
                    text: 'Hola')
              ],
            ),
          ),
        )
    );
  }
}