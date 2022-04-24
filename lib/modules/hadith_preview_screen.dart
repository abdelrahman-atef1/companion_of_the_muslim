import 'package:companion_of_the_muslim/modules/ErrorPageXR.dart';
import 'package:companion_of_the_muslim/modules/home/cubit/cubit.dart';
import 'package:companion_of_the_muslim/modules/home/cubit/states.dart';
import 'package:companion_of_the_muslim/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HadithPreviewScreen extends StatelessWidget {
  final String id;
  final String title;
  const HadithPreviewScreen({Key? key, required this.id, required this.title})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    var cubit = HomeCubit.get(context);
    void getPageData() {
      cubit.getHadithWithId(int.parse(id));
    }

    getPageData();

    return BlocConsumer<HomeCubit, HomeStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = HomeCubit.get(context);
        if (state is HomeGetHadithWithIdErrorState) {
          return Scaffold(body: ErrorPageXR(onTap: getPageData));
        }

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
                            maxLines: 2,
                            style: GoogleFonts.tajawal(
                                color: AppColors.bodyGreenTextColor,
                                fontSize: 24),
                          ),
                        ],
                      ),
                    ),
                    //GridView
                    Expanded(
                      child: state is HomeGetHadithWithIdLoadingState
                          ? const Center(child: CircularProgressIndicator())
                          : Container(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  15, 0, 15, 15),
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              decoration: BoxDecoration(
                                  color: AppColors.appWhite,
                                  borderRadius: BorderRadius.circular(8)),
                              child: SingleChildScrollView(
                                physics: const BouncingScrollPhysics(),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    RichText(
                                      //textAlign: TextAlign.justify,
                                      textDirection: TextDirection.rtl,
                                      text: TextSpan(children: [
                                        TextSpan(
                                          text: 'الحديث\n',
                                          style: GoogleFonts.tajawal(
                                              height: 1.5,
                                              color: AppColors.mainGreen,
                                              fontSize: 18),
                                        ),
                                        TextSpan(
                                          text: cubit.hadithItem!.hadith,
                                          style: GoogleFonts.tajawal(
                                              fontWeight: FontWeight.w600,
                                              height: 1.4,
                                              color: AppColors.bodyTextColor,
                                              fontSize: 16),
                                        ),
                                      ]),
                                    ),
                                    const Divider(),
                                    RichText(
                                        textDirection: TextDirection.rtl,
                                        text: TextSpan(children: [
                                          TextSpan(
                                            text: 'السند\n',
                                            style: GoogleFonts.tajawal(
                                                color: AppColors.mainGreen,
                                                fontSize: 18),
                                          ),
                                          TextSpan(
                                            text: cubit.hadithItem!.attribution,
                                            style: GoogleFonts.tajawal(
                                                color: AppColors.bodyTextColor,
                                                fontSize: 16),
                                          ),
                                        ])),
                                    const Divider(),
                                    RichText(
                                        textDirection: TextDirection.rtl,
                                        text: TextSpan(children: [
                                          TextSpan(
                                            text: 'درجة الحديث\n',
                                            style: GoogleFonts.tajawal(
                                                color: AppColors.mainGreen,
                                                fontSize: 18),
                                          ),
                                          TextSpan(
                                            text: cubit.hadithItem!.grade,
                                            style: GoogleFonts.tajawal(
                                                color: AppColors.bodyTextColor,
                                                fontSize: 16),
                                          ),
                                        ])),
                                    const Divider(),
                                    RichText(
                                        //textAlign: TextAlign.justify,
                                        textDirection: TextDirection.rtl,
                                        text: TextSpan(children: [
                                          TextSpan(
                                            text: 'معاني الكلمات\n',
                                            style: GoogleFonts.tajawal(
                                                color: AppColors.mainGreen,
                                                fontSize: 18),
                                          ),
                                          TextSpan(
                                              children: cubit.hadithItem!
                                                          .wordsMeanings !=
                                                      null
                                                  ? List.generate(
                                                      cubit
                                                          .hadithItem!
                                                          .wordsMeanings!
                                                          .length,
                                                      (index) => TextSpan(
                                                            children: [
                                                              TextSpan(
                                                                text:
                                                                    '${cubit.hadithItem!.wordsMeanings![index].word}: ',
                                                                style: GoogleFonts.tajawal(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    color: AppColors
                                                                        .bodyTextColor,
                                                                    fontSize:
                                                                        16),
                                                              ),
                                                              TextSpan(
                                                                text: cubit
                                                                        .hadithItem!
                                                                        .wordsMeanings![
                                                                            index]
                                                                        .meaning! +
                                                                    (cubit.hadithItem!.wordsMeanings!.length !=
                                                                            index +
                                                                                1
                                                                        ? '\n'
                                                                        : ''),
                                                                style: GoogleFonts.tajawal(
                                                                    height: 1.4,
                                                                    color: AppColors
                                                                        .bodyTextColor,
                                                                    fontSize:
                                                                        16),
                                                              ),
                                                            ],
                                                          ))
                                                  : []),
                                        ])),
                                    const Divider(),
                                    RichText(
                                        textAlign: TextAlign.justify,
                                        textDirection: TextDirection.rtl,
                                        text: TextSpan(children: [
                                          TextSpan(
                                            text: 'شرح الحديث\n',
                                            style: GoogleFonts.tajawal(
                                                color: AppColors.mainGreen,
                                                fontSize: 18),
                                          ),
                                          TextSpan(
                                            text: cubit.hadithItem!.explanation,
                                            style: GoogleFonts.tajawal(
                                                color: AppColors.bodyTextColor,
                                                fontSize: 16),
                                          ),
                                        ])),
                                    const Divider(),
                                    RichText(
                                        textAlign: TextAlign.justify,
                                        textDirection: TextDirection.rtl,
                                        text: TextSpan(children: [
                                          TextSpan(
                                            text: 'الدروس المستفادة\n',
                                            style: GoogleFonts.tajawal(
                                                color: AppColors.mainGreen,
                                                fontSize: 18),
                                          ),
                                          TextSpan(
                                            text:
                                                cubit.hadithItem!.hints != null
                                                    ? cubit.hadithItem!.hints!
                                                        .join('\n')
                                                    : 'لا يوجد',
                                            style: GoogleFonts.tajawal(
                                                color: AppColors.bodyTextColor,
                                                fontSize: 16),
                                          ),
                                        ])),
                                  ],
                                ),
                              ),
                            ),
                    ),
                  ],
                ),
              )
            ]),
          ),
        );
      },
    );
  }
}
