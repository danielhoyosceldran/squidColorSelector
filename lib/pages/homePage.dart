import 'package:flutter/material.dart';
import '../widgets/app_buttons.dart';
import '../widgets/app_bar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomizedAppBar(),
      body: Stack(
          children: [
            ListView(
              children: <Widget>[
            Container(
              height: 200,
              color: Colors.amber[600],
              child: const Center(child: Text('Entry A')),
            ),
            Container(
              height: 200,
              color: Colors.amber[500],
              child: const Center(child: Text('Entry B')),
            ),
            Container(
              height: 200,
              color: Colors.amber[100],
              child: const Center(child: Text('Entry C')),
            ),
            Container(
              height: 200,
              color: Colors.amber[600],
              child: const Center(child: Text('Entry A')),
            ),
            Container(
              height: 200,
              color: Colors.amber[500],
              child: const Center(child: Text('Entry B')),
            ),
            Container(
              height: 200,
              color: Colors.amber[100],
              child: const Center(child: Text('Entry C')),
            ),
          ],
            ),
            const Positioned(
              bottom: 20,
              right: 20,
              left: 20,
              child: CustomizedNavigationBar(),
            )
      ]),
    );
  }
}

/*
Column(
          children: [
            CustomizedButton(
                backgroundColor: Colors.greenAccent[100],
                borderColor: Colors.transparent,
                textColor: Colors.green[800],
                xSize: 115,
                ySize: 32,
                text: 'Hello',
                withShadow: true)
          ],
        ),
 */
