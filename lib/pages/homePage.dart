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
      bottomNavigationBar: const Padding(
          padding: EdgeInsets.all(20.0),
          child: CustomizedNavigationBar()
      ),
      body: SafeArea(
        child: Column(
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
      ),
    );
  }
}