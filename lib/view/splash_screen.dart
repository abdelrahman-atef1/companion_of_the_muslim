import 'package:companion_of_the_muslim/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainGreen,
      body: Stack(alignment: Alignment.center, children: [
        SvgPicture.asset(
          'assets/svg/splash_background.svg',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset('assets/svg/islamic_logo.svg'),
            Text(
              'رفيق المسلم',
              style: GoogleFonts.tajawal(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )
          ],
        ),
      ]),
    );
  }
}
