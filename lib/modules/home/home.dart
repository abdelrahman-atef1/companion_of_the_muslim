import 'package:companion_of_the_muslim/modules/ErrorPageXR.dart';
import 'package:companion_of_the_muslim/modules/hadith_list_screen.dart';
import 'package:companion_of_the_muslim/modules/home/cubit/cubit.dart';
import 'package:companion_of_the_muslim/modules/home/cubit/states.dart';
import 'package:companion_of_the_muslim/shared/components.dart';
import 'package:companion_of_the_muslim/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeCubit.get(context).getCategoryData();

    return BlocConsumer<HomeCubit, HomeStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = HomeCubit.get(context);

        if (state is HomeGetCategoryErrorState) {
          return Scaffold(body: ErrorPageXR(onTap: cubit.getCategoryData));
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
                                color: AppColors.bodyGreenTextColor,
                                fontSize: 24),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                        child: state is HomeGetCategoryLoadingState
                            ? const Center(child: CircularProgressIndicator())
                            : Container(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8)),
                                child: ListView.builder(
                                    physics: const BouncingScrollPhysics(),
                                    itemBuilder: (ctx, index) {
                                      return InkWell(
                                        onTap: () => navigatTo(
                                            context,
                                            HadithListScreen(
                                              categoryId: int.parse(
                                                cubit.categoryList[index].id,
                                              ),
                                              title: cubit
                                                  .categoryList[index].title,
                                            ),
                                            false),
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 15),
                                          child: categoryCard(
                                              cubit.categoryList[index].title,
                                              index + 1),
                                        ),
                                      );
                                    },
                                    itemCount: cubit.categoryList.length),
                              )),
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
