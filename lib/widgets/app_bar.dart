import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

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
            Text(
              "squid",
              style: GoogleFonts.karla(
                  fontSize: 30,
                  fontWeight: FontWeight.w500
              ),
            ),
            const Spacer(),
            SvgPicture.asset(
                'lib/images/settings_empty.svg',
                height: 28),
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
