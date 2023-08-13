import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomizedButton extends StatelessWidget {
  final Color? backgroundColor;
  final Color borderColor;
  final Color? textColor;
  String? text;
  IconData? icon;
  final double xSize;
  final double ySize;

  CustomizedButton({Key? key,
    required this.backgroundColor,
    required this.borderColor,
    required this.textColor,
    this.text,
    this.icon,
    required this.xSize,
    required this.ySize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("hola");
      },
      child: Container(
        width: xSize,
        height: ySize,
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
                color: borderColor,
                width: .8
            ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 2,
              blurRadius: 10,
            ),
          ],
        ),
        child: Center(
          child: text != null ? Text(
            text!,
            style: GoogleFonts.poppins(),
          ) : icon != null ? Icon(
              icon!
          ) : const Text(
              ''
          ),
        ),
      ),
    );
  }
}
