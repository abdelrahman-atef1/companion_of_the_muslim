import 'package:companion_of_the_muslim/modules/ErrorPageXR.dart';
import 'package:companion_of_the_muslim/modules/home/cubit/cubit.dart';
import 'package:companion_of_the_muslim/modules/home/cubit/states.dart';
import 'package:companion_of_the_muslim/shared/components.dart';
import 'package:companion_of_the_muslim/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HadithListScreen extends StatelessWidget {
  final int categoryId;
  final String title;
  const HadithListScreen(
      {Key? key, required this.categoryId, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cubit = HomeCubit.get(context);
    cubit.currentCategoryId = categoryId;
    Future getPageData() async {
      await cubit.getHadithListWithId(categoryId, cubit.currentPage);
    }

    getPageData();
    return BlocConsumer<HomeCubit, HomeStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = HomeCubit.get(context);
        if (state is HomeGetHadithListWithIdErrorState) {
          return Scaffold(body: ErrorPageXR(onTap: getPageData));
        }
        return WillPopScope(
          onWillPop: () {
            cubit.currentPage = 1;
            cubit.hadithList = null;
            return Future.value(true);
          },
          child: Scaffold(
            // appBar: AppBar(actions: [
            //   IconButton(
            //       onPressed: () => CacheHelper.clearHadithList(
            //           categoryId, cubit.currentPage),
            //       icon: const Icon(Icons.delete))
            // ]),
            body: SafeArea(
              child: Stack(alignment: AlignmentDirectional.center, children: [
                SvgPicture.asset(
                  'assets/svg/background.svg',
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      //Title
                      SizedBox(
                        height: 160,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const SizedBox(
                                  width: 48,
                                ),
                                Center(
                                    child: SvgPicture.asset(
                                        'assets/svg/Group 10.svg')),
                                IconButton(
                                  padding: EdgeInsets.zero,
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: Align(
                                    alignment: AlignmentDirectional.centerEnd,
                                    child: SvgPicture.asset(
                                        'assets/svg/arrow-right.svg'),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 35),
                            Text(
                              title,
                              textDirection: TextDirection.rtl,
                              style: GoogleFonts.tajawal(
                                  color: AppColors.bodyGreenTextColor,
                                  fontSize: 36),
                            ),
                          ],
                        ),
                      ),
                      //GridView
                      Expanded(
                        child: state is HomeGetHadithListWithIdLoadingState
                            ? const Center(child: CircularProgressIndicator())
                            : Container(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8)),
                                child: hadith(cubit)),
                      ),
                    ],
                  ),
                )
              ]),
            ),
          ),
        );
      },
    );
  }
}
