import 'package:companion_of_the_muslim/view/hadith_list.dart';
import 'package:companion_of_the_muslim/controller/home.dart';
import 'package:companion_of_the_muslim/shared/components.dart';
import 'package:companion_of_the_muslim/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final HomeController _controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    _controller.getCategoryData();
    return Scaffold(
      body: SafeArea(
        child: Stack(alignment: AlignmentDirectional.center, children: [
          SvgPicture.asset(
            'assets/svg/background.svg',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  height: 160,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Center(
                        child: SvgPicture.asset('assets/svg/Group 10.svg'),
                      ),
                      const SizedBox(height: 30),
                      Text(
                        'رفيق المسلم',
                        style: GoogleFonts.tajawal(
                          color: AppColors.bodyTextColor,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'لحفظ وتعلم الأحاديث النبوية',
                        style: GoogleFonts.tajawal(
                            color: AppColors.bodyGreenTextColor, fontSize: 24),
                      ),
                    ],
                  ),
                ),
                GetBuilder<HomeController>(builder: (controller) {
                  if (controller.categoryList == null) {
                    return const Expanded(
                        child: Center(child: CircularProgressIndicator()));
                  }
                  return Expanded(
                      child: Container(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(8)),
                    child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (ctx, index) {
                          return InkWell(
                            onTap: () => Get.to(() => HadithListScreen(
                                  categoryId:
                                      _controller.categoryList!.list[index].id,
                                  title: _controller
                                      .categoryList!.list[index].title,
                                )),
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 15),
                              child: categoryCard(
                                  _controller.categoryList!.list[index].title,
                                  index + 1),
                            ),
                          );
                        },
                        itemCount: _controller.categoryList!.list.length),
                  ));
                })
              ],
            ),
          )
        ]),
      ),
    );
  }
}
