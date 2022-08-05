import 'package:companion_of_the_muslim/models/hadith_model.dart';
import 'package:companion_of_the_muslim/shared/constants.dart';
import 'package:companion_of_the_muslim/shared/network/local/cache_helper.dart';
import 'package:companion_of_the_muslim/shared/network/remote/requists.dart';
import 'package:dio/dio.dart' as dio;
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class HadithPreviewController extends GetxController {
  HadithModel? hadithItem;
  Future getHadithWithId(int hadithId) async {
    hadithItem = null;
    try {
      var localHadith = await CacheHelper.getHadith(hadithId, appLanguage);
      if (localHadith != null) {
        hadithItem =
            HadithModel.fromJson(Map<String, dynamic>.from(localHadith));
        update();
        return;
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
    try {
      dio.Response response = await Requists.hadithWithIdRequist(hadithId);
      hadithItem = HadithModel.fromJson(response.data);
      await CacheHelper.saveHadith(
          Map<String, dynamic>.from(response.data), hadithId, appLanguage);
      update();
      if (kDebugMode) print(hadithItem);
    } catch (e) {
      if (kDebugMode) print(e);
    }
  }
}
