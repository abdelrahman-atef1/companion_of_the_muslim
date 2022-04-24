import 'package:companion_of_the_muslim/models/hadith_list_model.dart';
import 'package:companion_of_the_muslim/models/hadith_category.dart';
import 'package:companion_of_the_muslim/models/hadith_model.dart';
import 'package:companion_of_the_muslim/modules/home/cubit/states.dart';
import 'package:companion_of_the_muslim/shared/constants.dart';
import 'package:companion_of_the_muslim/shared/network/remote/requists.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../shared/network/local/cache_helper.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeInitialState());
  static HomeCubit get(BuildContext context) => BlocProvider.of(context);
  List<CategoryModel> categoryList = [];
  Future getCategoryData() async {
    emit(HomeGetCategoryLoadingState());
    try {
      List localCategory = await CacheHelper.getCategoryList();
      categoryList = [];
      for (var element in localCategory) {
        categoryList
            .add(CategoryModel.fromJson(Map<String, dynamic>.from(element)));
      }
      emit(HomeGetCategorySuccessState());
    } catch (e) {
      print(e);
    }
    if (categoryList.isEmpty) {
      categoryList = [];
      try {
        Response response = await Requists.categoryListRequist();
        List data = response.data;
        List<Map<String, dynamic>> mapped = [];
        for (var element in data) {
          mapped.add(Map<String, dynamic>.from(element));
        }
        CacheHelper.saveCategoryList(mapped);
        if (kDebugMode) {
          print(data);
        }
        for (var item in data) {
          categoryList.add(CategoryModel.fromJson(item));
        }
        emit(HomeGetCategorySuccessState());
      } catch (e) {
        if (kDebugMode) print(e);
        emit(HomeGetCategoryErrorState());
      }
    }
  }

  HadithListModel? hadithList;
  Future getHadithListWithId(int categoryId, int page) async {
    emit(HomeGetHadithListWithIdLoadingState());
    try {
      var localHadithList = HadithListModel.fromJson(Map<String, dynamic>.from(
          await CacheHelper.getHadithList(categoryId, page)));
      hadithList = null;
      hadithList = localHadithList;
      emit(HomeGetHadithListWithIdSuccessState());
      return;
    } catch (e) {
      print(e);
    }
    try {
      Response response =
          await Requists.hadithListWithIdRequist(categoryId, page);
      hadithList = null;

      hadithList = HadithListModel.fromJson(response.data);
      CacheHelper.saveHadithList(
          Map<String, dynamic>.from(response.data), categoryId, page);
      if (kDebugMode) {
        print(hadithList);
      }
      emit(HomeGetHadithListWithIdSuccessState());
    } catch (e) {
      if (kDebugMode) print(e);
      emit(HomeGetHadithListWithIdErrorState());
    }
  }

  HadithModel? hadithItem;
  Future getHadithWithId(int hadithId) async {
    emit(HomeGetHadithWithIdLoadingState());
    try {
      var localHadith = HadithModel.fromJson(Map<String, dynamic>.from(
          await CacheHelper.getHadith(hadithId, appLanguage)));
      hadithItem = null;
      hadithItem = localHadith;
      emit(HomeGetHadithWithIdSuccessState());
      return;
    } catch (e) {
      print(e);
    }
    try {
      Response response = await Requists.hadithWithIdRequist(hadithId);
      hadithItem = HadithModel.fromJson(response.data);
      await CacheHelper.saveHadith(
          Map<String, dynamic>.from(response.data), hadithId, appLanguage);

      if (kDebugMode) print(hadithItem);

      emit(HomeGetHadithWithIdSuccessState());
    } catch (e) {
      if (kDebugMode) print(e);
      emit(HomeGetHadithWithIdErrorState());
    }
  }

  int currentCategoryId = 1;
  int currentPage = 1;
  void changeCurrentPage(
    int newCurrentPage,
  ) async {
    await getHadithListWithId(currentCategoryId, newCurrentPage);
    currentPage = newCurrentPage;
    emit(HomeChangeCurrentPageState());
  }
}
