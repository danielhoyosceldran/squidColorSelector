import 'package:color_selector/pages/createPage.dart';
import 'package:flutter/material.dart';
import '../widgets/app_bar.dart';
import 'homePage.dart';

class BaseStructure extends StatefulWidget {
  const BaseStructure({super.key});

  @override
  State<BaseStructure> createState() => _BaseStructureState();
}
class _BaseStructureState extends State<BaseStructure> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        appBar: const CustomizedAppBar(),

        body: SafeArea(
          child: Navigator(
            onGenerateRoute: (settings) {
              Widget page = const MyHomePage();
              if (settings.name == '/createPage') page = const CreatePage();
              return MaterialPageRoute(builder: (_) => page);
              },
          ),
        )
    );
  }
}