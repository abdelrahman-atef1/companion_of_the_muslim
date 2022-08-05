import 'package:companion_of_the_muslim/controller/hadith_list.dart';
import 'package:companion_of_the_muslim/shared/styles/colors.dart';
import 'package:companion_of_the_muslim/view/widget/hadith_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:number_pagination/number_pagination.dart';

class HadithListScreen extends StatelessWidget {
  HadithListScreen({Key? key, required this.categoryId, required this.title})
      : super(key: key);
  final int categoryId;
  final String title;
  final HadithListController _controller = Get.put(HadithListController());

  @override
  Widget build(BuildContext context) {
    _controller.getHadithListWithId(categoryId, 1);
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
                              child:
                                  SvgPicture.asset('assets/svg/Group 10.svg')),
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
                            color: AppColors.bodyGreenTextColor, fontSize: 36),
                      ),
                    ],
                  ),
                ),
                //GridView
                GetBuilder<HadithListController>(builder: (controller) {
                  return Expanded(
                      child: controller.hadithList == null
                          ? const Center(child: CircularProgressIndicator())
                          : Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8)),
                                    child: GridView.builder(
                                        shrinkWrap: true,
                                        itemCount:
                                            controller.hadithList!.data.length,
                                        gridDelegate:
                                            const SliverGridDelegateWithMaxCrossAxisExtent(
                                                maxCrossAxisExtent: 350,
                                                childAspectRatio: 1,
                                                crossAxisSpacing: 5,
                                                mainAxisSpacing: 5),
                                        itemBuilder: (context, index) {
                                          return HadithItem(
                                            id: controller
                                                .hadithList!.data[index].id,
                                            title: controller
                                                .hadithList!.data[index].title,
                                            hadithNumber:
                                                controller.currentPage * 20 -
                                                    20 +
                                                    index +
                                                    1,
                                          );
                                        }),
                                  ),
                                ),
                                //Page Navigator
                                NumberPagination(
                                  onPageChanged: (currentPage) =>
                                      controller.getHadithListWithId(
                                          categoryId, currentPage),
                                  threshold: 5,
                                  pageTotal:
                                      controller.hadithList!.meta.lastPage,
                                  pageInit: 1,
                                  colorPrimary: Colors.green,
                                ),
                              ],
                            ));
                }),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
