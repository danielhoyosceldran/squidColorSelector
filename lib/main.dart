import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
      backgroundColor: Colors.white,
      appBar: const CustomizedAppBar(),
        body: SafeArea(
          child: Container(
            child: Column(
              children: [
                CustomizedButton(
                    backgroundColor: Colors.greenAccent[100],
                    borderColor: Colors.transparent,
                    textColor: Colors.green[800],
                    xSize: 115,
                    ySize: 32,
                    text: 'Hola')
              ],
            ),
          ),
        )
    );
  }
}

/*
AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Text(
          "squid",
          style: GoogleFonts.karla(
            color: Colors.black,
            fontSize: 24
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 2.0),
            child: Icon(Icons.settings, color: Colors.black,),
          )
        ],
      ),
 */