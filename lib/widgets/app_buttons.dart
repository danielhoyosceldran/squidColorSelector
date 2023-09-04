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
  int? customIndex, currentIndex;
  bool? withShadow,
      withIcon,
      withSvgIcon,
      withPressedIcon,
      withSvgPressedIcon,
      withDestination,
      withIndex;

  final bool isPressed = false;
  String? svgCurrentIcon;

  CustomizedButton(
      {Key? key,
      this.backgroundColor = Colors.transparent,
      this.borderColor,
      this.textColor,
      this.text,
      this.icon,
      this.svgIcon,
      this.svgPressedIcon,
      this.xSize = 22,
      this.ySize = 22,
      this.withPressedIcon,
      this.destination,
      this.customIndex,
      this.currentIndex,
      this.withIndex = false,
      this.withSvgPressedIcon = false,
      this.withShadow = false,
      this.withIcon = false,
      this.withSvgIcon = false,
      this.withDestination = false})
      : super(key: key) {
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
              widget.currentIndex = widget.customIndex;
              //Navigator.pushNamed(context, widget.destination!);
            } else if (widget.svgCurrentIcon == widget.svgPressedIcon) {
              widget.svgCurrentIcon = widget.svgIcon;
            }
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
              color: widget.borderColor ?? Colors.transparent, width: .8),
          boxShadow: (widget.withShadow!)
              ? [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    spreadRadius: 2,
                    blurRadius: 10,
                  ),
                ]
              : [],
        ),
        child: Center(
          child: (widget.withIcon!)
              ? Icon(widget.icon!)
              : (widget.withSvgIcon!)
                  ? SvgPicture.asset(widget.svgCurrentIcon!,
                      height: widget.ySize, width: widget.xSize)
                  : Text(
                      widget.text ?? "null",
                      style: GoogleFonts.poppins(),
                    ),
        ),
      ),
    );
  }
}

class AppBarButtons extends StatefulWidget {
  String? svgIcon, svgPressedIcon;
  final double size;
  final bool isPressed = false;
  bool pressedAction;
  Function(int)? updateIndex;
  int? newIndex, currentIndex, numberOfIcons;
  String? svgCurrentIcon;
  AppBarButtons({
    Key? key,
    required this.svgIcon,
    this.svgPressedIcon,
    required this.size,
    this.updateIndex,
    this.newIndex,
    this.currentIndex,
    required this.numberOfIcons,
    this.pressedAction = true,
  }) : super(key: key) {
    svgCurrentIcon = svgIcon;
  }

  @override
  State<AppBarButtons> createState() => _AppBarButtonsState();
}

class _AppBarButtonsState extends State<AppBarButtons> {
  @override
  Widget build(BuildContext context) {
    const int appBarSideMargin = 20; // should be in app_bar but by now its ok
    const int iconExtraSize = 12;
    final double extrasSize = (widget.numberOfIcons! * widget.size) +
        (appBarSideMargin * 2) +
        iconExtraSize;
    final double sidePadding =
        (MediaQuery.of(context).size.width - extrasSize) /
            (widget.numberOfIcons! * 2);
    return GestureDetector(
      onTap: widget.pressedAction
          ? () {
              widget.updateIndex!(widget.newIndex!);
            }
          : () {},
      child: Container(
        color: Colors.transparent,
        child: Padding(
            padding: EdgeInsets.only(
                left: sidePadding, right: sidePadding, top: 14, bottom: 14),
            child: (widget.currentIndex == widget.newIndex)
                ? (widget.svgPressedIcon != null)
                    ? SvgPicture.asset(widget.svgPressedIcon!,
                        height: widget.size, width: widget.size)
                    : SvgPicture.asset(widget.svgIcon!,
                        height: widget.size, width: widget.size)
                : SvgPicture.asset(widget.svgIcon!,
                    height: widget.size, width: widget.size)),
      ),
    );
  }
}
