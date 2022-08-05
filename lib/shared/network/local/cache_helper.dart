import 'package:hive_flutter/hive_flutter.dart';

class CacheHelper {
  // static Future saveCategoryList(List categoryList) async {
  //   Box box = await Hive.openBox('box');
  //   await box.put('categoryList', categoryList);
  //   box.close();
  // }

  // static Future<List> getCategoryList() async {
  //   Box box = await Hive.openBox('box');
  //   List data = box.get('categoryList');
  //   box.close();
  //   return data;
  // }

  static clearCategoryList() async {
    Box box = await Hive.openBox('box');

    await box.delete('categoryList');
    box.close();
  }

  static Future saveHadithList(
      Map hadithList, int categoryId, int pageNumber) async {
    Box box = await Hive.openBox('box');

    await box.put('$categoryId$pageNumber', hadithList);
    box.close();
  }

  static Future<Map?> getHadithList(int categoryId, int pageNumber) async {
    Box box = await Hive.openBox('box');
    Map? data = box.get('$categoryId$pageNumber');
    box.close();

    return data;
  }

  static clearHadithList(int categoryId, int pageNumber) async {
    Box box = await Hive.openBox('box');

    await box.delete('$categoryId$pageNumber');
    box.close();
  }

  static Future saveHadith(Map hadith, int hadithId, String lang) async {
    Box box = await Hive.openBox('box');

    await box.put('$hadithId$lang', hadith);
    box.close();
  }

  static Future<Map?> getHadith(int hadithId, String lang) async {
    Box box = await Hive.openBox('box');
    Map? data = box.get('$hadithId$lang');
    box.close();

    return data;
  }

  static clearHadith(int hadithId, String lang) async {
    Box box = await Hive.openBox('box');

    await box.delete('$hadithId$lang');
    box.close();
  }
}
