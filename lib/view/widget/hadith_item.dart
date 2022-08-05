import 'package:companion_of_the_muslim/shared/styles/colors.dart';
import 'package:companion_of_the_muslim/view/hadith_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HadithItem extends StatelessWidget {
  const HadithItem({
    Key? key,
    required this.id,
    required this.title,
    required this.hadithNumber,
  }) : super(key: key);
  final int id;
  final int hadithNumber;
  final String title;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.to(() => HadithPreviewScreen(
            id: id,
            title: title,
          )),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'assets/images/Path 40@3x.png',
            width: double.infinity,
            height: double.infinity,
          ),
          SvgPicture.asset(
            'assets/svg/Path 41.svg',
            width: double.infinity,
            height: double.infinity,
          ),
          Align(
            alignment: AlignmentDirectional.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/svg/Subtraction 7.svg',
                    width: 40,
                    height: 40,
                  ),
                  Text(
                    hadithNumber.toString(),
                    style: GoogleFonts.tajawal(
                        fontSize: 10, color: AppColors.titleTextColor),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 27,
            ),
            child: Text('\n$title',
                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl,
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.tajawal(
                    color: AppColors.hadithYellowTextColor,
                    fontSize: 14,
                    fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}
