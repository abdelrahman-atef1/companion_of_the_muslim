import 'package:companion_of_the_muslim/models/hadith_category.dart';
import 'package:companion_of_the_muslim/shared/network/remote/requists.dart';
import 'package:dio/dio.dart' as dio;
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  CategoryListModel? categoryList;
  Future getCategoryData() async {
    try {
      dio.Response response = await Requists.categoryListRequist();
      List data = response.data;
      List<Map<String, dynamic>> mapped = [];
      for (var element in data) {
        mapped.add(Map<String, dynamic>.from(element));
      }
      if (kDebugMode) {
        print(data);
      }
      categoryList = CategoryListModel.fromJson(mapped);
      update();
    } catch (e) {
      if (kDebugMode) print(e);
    }
  }
}
