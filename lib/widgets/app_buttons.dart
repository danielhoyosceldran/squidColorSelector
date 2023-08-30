import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/svg.dart';

class CustomizedButton extends StatefulWidget {
  final Color? backgroundColor;
  Color? borderColor;
  Color? textColor;
  String? text;
  IconData? icon, pressedIcon;
  String? svgIcon, svgPressedIcon;
  String? destination;
  final double xSize, ySize;
  bool? withShadow, withIcon, withSvgIcon, withPressedIcon, withSvgPressedIcon, withDestination;

  final bool isPressed = false;
  String? svgCurrentIcon;

  CustomizedButton({Key? key,
    required this.backgroundColor,
    this.borderColor,
    this.textColor,
    this.text,
    this.icon,
    this.svgIcon,
    this.svgPressedIcon,
    required this.xSize,
    required this.ySize,
    this.withPressedIcon,
    this.destination,
    this.withSvgPressedIcon = false,
    this.withShadow = false,
    this.withIcon = false,
    this.withSvgIcon = false,
    this.withDestination = false}) : super(key: key) {
    if (withSvgIcon! && withSvgPressedIcon!) {
      svgCurrentIcon = svgIcon;
    }
  }

  @override
  State<CustomizedButton> createState() => _CustomizedButtonState();
}

class _CustomizedButtonState extends State<CustomizedButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (widget.withSvgIcon! && widget.withSvgPressedIcon!) {
            if (widget.svgCurrentIcon == widget.svgIcon) {
              widget.svgCurrentIcon = widget.svgPressedIcon;
              Navigator.pushNamed(context, '/settingsPage');
            }
            else if (widget.svgCurrentIcon == widget.svgPressedIcon) {widget.svgCurrentIcon = widget.svgIcon;}
          }
        });
      },
      child: Container(
        width: widget.xSize,
        height: widget.ySize,
        decoration: BoxDecoration(
          color: widget.backgroundColor,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
              color: widget.borderColor ?? Colors.transparent,
              width: .8
          ),
          boxShadow: (widget.withShadow!) ? [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 2,
              blurRadius: 10,
            ),
          ] : [],
        ),
        child: Center(
          child: (widget.withIcon!) ? Icon(
              widget.icon!
          ) : (widget.withSvgIcon!) ? SvgPicture.asset(widget.svgCurrentIcon!, height: widget.ySize, width: widget.xSize) :
          Text(
            widget.text ?? "null",
            style: GoogleFonts.poppins(),
          ),
        ),
      ),
    );
  }
}