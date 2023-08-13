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
      height: 100,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 35, right: 20),
        child: Row(
          children: [
            Padding(
            padding: const EdgeInsets.only(right: 6, top: 5),
            child: SvgPicture.asset(
                'lib/images/squid_empty.svg',
                height: 22
            ),
            ),
            Text(
              "squid",
              style: GoogleFonts.karla(
                  fontSize: 30,
                  fontWeight: FontWeight.w500
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: SvgPicture.asset(
              'lib/images/settings_empty.svg',
              height: 25,
            ),)
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size(
      double.maxFinite,
      60
  );
}

class CustomizedNavigationBar extends StatefulWidget {
  const CustomizedNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomizedNavigationBar> createState() => _CustomizedNavigationBarState();
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
            offset: const Offset(0,2.0)
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 22, right: 22),
        child: Row(
        children: [
          SvgPicture.asset('lib/images/backArrow2_disabled.svg', height: 22),
          Spacer(),
          SvgPicture.asset('lib/images/palette_empty.svg', height: 22),
          Spacer(),
          SvgPicture.asset('lib/images/create_empty.svg', height: 22),
          Spacer(),
          SvgPicture.asset('lib/images/profile_empty.svg', height: 22),
          Spacer(),
          SvgPicture.asset('lib/images/favourite_empty.svg', height: 22),
        ],
      ),
      )
    );
  }
}


