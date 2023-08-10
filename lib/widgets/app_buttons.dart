import 'package:flutter/cupertino.dart';

class CustomizedButton extends StatelessWidget {
  final Color backgroundColor;
  final Color borderColor;
  final Color textColor;
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
            )
        ),
        child: Center(
          child: text != null ? Text(
            text!,
            style: TextStyle(
                color: textColor,
                fontSize: 15,
                inherit: false
            ),
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
