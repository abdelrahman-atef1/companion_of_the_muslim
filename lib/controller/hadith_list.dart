import 'package:companion_of_the_muslim/models/hadith_list_model.dart';
import 'package:companion_of_the_muslim/shared/network/local/cache_helper.dart';
import 'package:companion_of_the_muslim/shared/network/remote/requists.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart' as dio;

class HadithListController extends GetxController {
  int currentCategoryId = 1;
  int currentPage = 1;

  HadithListModel? hadithList;
  Future getHadithListWithId(int categoryId, int page) async {
    currentPage = page;
    hadithList = null;
    try {
      var localHadithList = await CacheHelper.getHadithList(categoryId, page);
      if (localHadithList != null) {
        hadithList = HadithListModel.fromJson(
            Map<String, dynamic>.from(localHadithList));
        update();
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
    if (hadithList == null) {
      try {
        dio.Response response =
            await Requists.hadithListWithIdRequist(categoryId, page);
        hadithList = HadithListModel.fromJson(response.data);
        CacheHelper.saveHadithList(
            Map<String, dynamic>.from(response.data), categoryId, page);
        if (kDebugMode) {
          print(hadithList);
        }
        update();
      } catch (e) {
        if (kDebugMode) print(e);
      }
    }
  }
}
