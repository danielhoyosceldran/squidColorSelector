import 'package:flutter/cupertino.dart';
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
      height: 100,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 35, right: 20),
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
  const CustomizedNavigationBar({Key? key}) : super(key: key);

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
        child: Padding(
          padding: const EdgeInsets.only(left: 22, right: 22),
          child: Row(
            children: [
              SvgPicture.asset('lib/images/squid_empty.svg', height: 22),
              const Spacer(),
              CustomizedButton(
                  destination: '/palettesPage',
                  withSvgIcon: true,
                  withSvgPressedIcon: true,
                  withDestination: true,
                  svgIcon: 'lib/images/palette_empty.svg',
                  svgPressedIcon: 'lib/images/palette_full.svg'),
              const Spacer(),
              CustomizedButton(
                  destination: '/createPage',
                  withSvgIcon: true,
                  withSvgPressedIcon: true,
                  withDestination: true,
                  svgIcon: 'lib/images/create_empty.svg',
                  svgPressedIcon: 'lib/images/create_full.svg'),
              const Spacer(),
              CustomizedButton(
                  destination: '/profilePage',
                  withSvgIcon: true,
                  withSvgPressedIcon: true,
                  withDestination: true,
                  svgIcon: 'lib/images/profile_empty.svg',
                  svgPressedIcon: 'lib/images/profile_full.svg'),
              const Spacer(),
              CustomizedButton(
                  destination: '/favoritesPage',
                  withSvgIcon: true,
                  withSvgPressedIcon: true,
                  withDestination: true,
                  svgIcon: 'lib/images/favorite_empty.svg',
                  svgPressedIcon: 'lib/images/favorite_full.svg'),
            ],
          ),
        ));
  }
}
