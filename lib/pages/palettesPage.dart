import 'package:flutter/material.dart';
import '../widgets/palette.dart';

class PalettesPage extends StatefulWidget {
  const PalettesPage({Key? key}) : super(key: key);

  @override
  State<PalettesPage> createState() => _PalettesPageState();
}

class _PalettesPageState extends State<PalettesPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: const <Widget>[
        // shouldn't be hardcoded
        Palette(colors: ["#0081A7", "#00AFB9", "#FDFCDC", "#FED9B7", "#F07167"]),
        Palette(colors: ["#CAD2C5", "#84A98C", "#52796F", "#354F52", "#2F3E46"]),
        Palette(colors: ["#FED0BB", "#FCB9B2", "#B23A48", "#8C2F39", "#461220"]),
        Palette(colors: ["#F4F4F9", "#B8DBD9", "#586F7C", "#2F4550", "#000000"]),
        Palette(colors: ["#D3F8E2", "#E4C1F9", "#F694C1", "#EDE7B1", "#A9DEF9"]),

        Palette(colors: ["#edafb8", "#f7e1d7", "#dedbd2", "#b0c4b1", "#4a5759"]),
        Palette(colors: ["#ede0d4", "#e6ccb2", "#ddb892", "#b08968", "#7f5539", "#9c6644"]),
        Palette(colors: ["#cb997e", "#eddcd2", "#fff1e6", "#f0efeb", "#ddbea9", "#a5a58d", "#b7b7a4"]),
        Palette(colors: ["#b5ffe1", "#93e5ab", "#65b891", "#4e878c", "#00241b"]),
        Palette(colors: ["#4f6d7a", "#c0d6df", "#dbe9ee", "#4a6fa5", "#166088"]),
      ],
    );
  }
}
