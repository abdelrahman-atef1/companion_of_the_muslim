import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class DioHelper {
  static late Dio dio;

  static void dioInit() {
    dio = Dio(BaseOptions(
        baseUrl: 'https://hadeethenc.com/api/v1/',
        receiveDataWhenStatusError: true));
  }

  static Future getData(String endPoint, Map<String, dynamic>? query) async {
    try {
      return await dio.get(endPoint, queryParameters: query);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }
}
