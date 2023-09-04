import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import './app_buttons.dart';

class CustomizedAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomizedAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 90,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 30, right: 20),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 6, top: 5),
              child: SvgPicture.asset('lib/images/squid_empty.svg', height: 22),
            ),
            Text(
              "squid",
              style:
                  GoogleFonts.karla(fontSize: 30, fontWeight: FontWeight.w500),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: CustomizedButton(
                  ySize: 25,
                  xSize: 25,
                  destination: '/palettesPage',
                  withSvgIcon: true,
                  withSvgPressedIcon: true,
                  withDestination: true,
                  svgIcon: 'lib/images/settings_empty.svg',
                  svgPressedIcon: 'lib/images/settings_full.svg'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.maxFinite, 60);
}

class CustomizedNavigationBar extends StatefulWidget {
  final Function(int) updateIndex;
  final int currentIndex;
  final int numberOfIcons = 5;
  const CustomizedNavigationBar({Key? key, required this.updateIndex, required this.currentIndex})
      : super(key: key);

  @override
  State<CustomizedNavigationBar> createState() =>
      _CustomizedNavigationBarState();
}

class _CustomizedNavigationBarState extends State<CustomizedNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 52,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.4),
                spreadRadius: 0,
                blurRadius: 10,
                offset: const Offset(0, 2.0)),
          ],
        ),
        child: Row(
          children: [
            AppBarButtons(
              svgIcon: 'lib/images/squid_empty.svg',
              size: 22,
              numberOfIcons: widget.numberOfIcons,
            pressedAction: false),
            const Spacer(),
            AppBarButtons(
                svgIcon: 'lib/images/palette_empty.svg',
                svgPressedIcon: 'lib/images/palette_full.svg',
                size: 22,
                updateIndex: widget.updateIndex,
                newIndex: 0,
                currentIndex: widget.currentIndex,
            numberOfIcons: widget.numberOfIcons,),
            const Spacer(),
            AppBarButtons(
                svgIcon: 'lib/images/create_empty.svg',
                svgPressedIcon: 'lib/images/create_full.svg',
                size: 22,
                updateIndex: widget.updateIndex,
                newIndex: 1,
                currentIndex: widget.currentIndex,
            numberOfIcons: widget.numberOfIcons,),
            const Spacer(),
            AppBarButtons(
                svgIcon: 'lib/images/profile_empty.svg',
                svgPressedIcon: 'lib/images/profile_full.svg',
                size: 22,
                updateIndex: widget.updateIndex,
                newIndex: 2,
                currentIndex: widget.currentIndex,
            numberOfIcons: widget.numberOfIcons,),
            const Spacer(),
            AppBarButtons(
                svgIcon: 'lib/images/favorite_empty.svg',
                svgPressedIcon: 'lib/images/favorite_full.svg',
                size: 22,
                updateIndex: widget.updateIndex,
                newIndex: 3,
                currentIndex: widget.currentIndex,
            numberOfIcons: widget.numberOfIcons,),
          ],
        ),);
  }
}
