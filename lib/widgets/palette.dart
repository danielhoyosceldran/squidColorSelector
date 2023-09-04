import 'package:flutter/material.dart';

class Palette extends StatelessWidget {
  final List<String> colors;

  const Palette({Key? key, required this.colors}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Color? _getColorFromHex(String hexColor) {
      hexColor = hexColor.replaceAll("#", "");
      if (hexColor.length == 6) {
        hexColor = "FF$hexColor";
      }
      if (hexColor.length == 8) {
        return Color(int.parse("0x$hexColor"));
      }
    }

    return Container(
      clipBehavior: Clip.hardEdge,
        margin: const EdgeInsets.only(left: 35, right: 35, top: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.amber[600],
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.4),
                spreadRadius: 0,
                blurRadius: 10,
                offset: const Offset(0, 2.0)),
          ],
        ),
        height: 130,
      child: Row(
        children: [
          for (var colorValue in colors) Expanded(child: Container(
            color: _getColorFromHex(colorValue),
          ))
        ],
      )
    );
  }
}
