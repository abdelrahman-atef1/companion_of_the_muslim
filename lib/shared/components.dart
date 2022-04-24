import 'package:companion_of_the_muslim/modules/hadith_preview_screen.dart';
import 'package:companion_of_the_muslim/modules/home/cubit/cubit.dart';
import 'package:companion_of_the_muslim/shared/styles/colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

void navigatTo(BuildContext context, Widget screen, bool remove) {
  Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: ((context) => screen)), (route) => !remove);
}

Widget categoryCard(String title, int number) {
  return Container(
    width: double.infinity,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: const LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            AppColors.mainGreen,
            AppColors.darkGreen,
          ],
        )),
    child: Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 10,
      ),
      child: Row(
        children: [
          Image.asset('assets/images/quran(3).png'),
          Expanded(
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: GoogleFonts.tajawal(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: AppColors.titleTextColor,
              ),
            ),
          ),
          Stack(alignment: Alignment.center, children: [
            SvgPicture.asset('assets/svg/Subtraction 7.svg'),
            Text(
              '$number',
              style: GoogleFonts.tajawal(
                color: AppColors.titleTextColor,
              ),
            ),
          ]),
        ],
      ),
    ),
  );
}

Widget hadith(HomeCubit cubit) {
  return ListView(
    physics: const BouncingScrollPhysics(),
    children: [
      //List Of Hadith
      GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: cubit.hadithList!.data.length,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 350,
              childAspectRatio: 1,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5),
          itemBuilder: (context, index) {
            var currentHadith = cubit.hadithList!.data[index];
            return InkWell(
              onTap: () => navigatTo(
                  context,
                  HadithPreviewScreen(
                    id: currentHadith.id,
                    title: currentHadith.title,
                  ),
                  false),
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
                            (cubit.currentPage * 20 - 20 + index + 1)
                                .toString(),
                            style: const TextStyle(
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
                    child: Text('\n${currentHadith.title}',
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
          }),
      //Page Navigator
      Padding(
          padding: const EdgeInsets.all(5.0),
          child: nextAndPrevious(cubit,
              currentPage: cubit.currentPage,
              pages: cubit.hadithList!.meta.lastPage))
    ],
  );
}

Widget nextAndPrevious(HomeCubit cubit,
    {required int pages, required int currentPage}) {
  //Generate 5 Items of numbering
  List<Widget> list = List.generate(pages < 5 ? pages : 5, (index) {
    int updatedIndex = index + 1;
    if (pages > 5) {
      if (pages == currentPage || pages - 1 == currentPage) {
        switch (updatedIndex) {
          case 1:
            return numbering(cubit, currentPage, 1);
          case 2:
            return numbering(cubit, currentPage, 2);
          case 3:
            return numbering(cubit, currentPage, 0, text: '...');
          case 4:
            return numbering(cubit, currentPage, pages - 1);
          case 5:
            return numbering(cubit, currentPage, pages);
        }
      } else {
        switch (updatedIndex) {
          case 1:
            return numbering(cubit, currentPage, currentPage);
          case 2:
            return currentPage + 1 == pages - 1
                ? Container()
                : numbering(cubit, currentPage, currentPage + 1);
          case 3:
            return numbering(cubit, currentPage, 0, text: '...');
          case 4:
            return numbering(cubit, currentPage, pages - 1);
          case 5:
            return numbering(cubit, currentPage, pages);
        }
      }
    }
    return numbering(cubit, currentPage, updatedIndex);
  });
  //Return Buttons and numbering
  return Center(
    child: SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Visibility(
            visible: currentPage != 1,
            child: Row(
              children: [
                Visibility(
                  visible: currentPage != 2,
                  child: GestureDetector(
                      onTap: () {
                        cubit.changeCurrentPage(1);
                      },
                      child: const Icon(
                        Icons.keyboard_double_arrow_left,
                        color: Colors.green,
                      )),
                ),
                TextButton(
                    onPressed: () {
                      cubit.changeCurrentPage(currentPage - 1);
                    },
                    child: Row(
                      children: const [
                        Icon(Icons.arrow_back_ios),
                        Text('PREV'),
                      ],
                    )),
              ],
            ),
          ),
          Row(
            children: list,
          ),
          Visibility(
            visible: currentPage != pages,
            child: Row(
              children: [
                TextButton(
                    onPressed: () {
                      cubit.changeCurrentPage(currentPage + 1);
                    },
                    child: Row(
                      children: const [
                        Text('NEXT'),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    )),
                Visibility(
                  visible: currentPage != pages - 1,
                  child: GestureDetector(
                      onTap: () {
                        cubit.changeCurrentPage(pages);
                      },
                      child: const Icon(
                        Icons.keyboard_double_arrow_right,
                        color: Colors.green,
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget numbering(HomeCubit cubit, int currentPage, int index, {String? text}) {
  return InkWell(
    onTap: () {
      if (text == null) cubit.changeCurrentPage(index);
      if (kDebugMode) {
        print(index);
      }
    },
    child: Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      width: 35,
      height: 35,
      decoration: BoxDecoration(
          color: currentPage == index ? Colors.green : Colors.transparent,
          shape: BoxShape.circle),
      child: Center(
        child: Text(
          text ?? (index).toString(),
          style: TextStyle(
            color: currentPage == index
                ? AppColors.titleTextColor
                : AppColors.bodyTextColor,
          ),
        ),
      ),
    ),
  );
}
