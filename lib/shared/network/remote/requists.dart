import 'package:companion_of_the_muslim/shared/constants.dart';
import 'package:companion_of_the_muslim/shared/network/remote/dio_helper.dart';
import 'package:companion_of_the_muslim/shared/network/remote/end_points.dart';

class Requists {
  static Future categoryListRequist() async {
    return await DioHelper.getData(
        EndPoints.categoriesRoots, {'language': appLanguage});
  }

  static Future hadithListWithIdRequist(int categoryId, int page) async {
    return await DioHelper.getData(EndPoints.hadeethsList, {
      'language': appLanguage,
      'category_id': categoryId,
      'page': page,
      'per_page': hadithPerPage,
    });
  }

  static Future hadithWithIdRequist(int hadithId) async {
    return await DioHelper.getData(EndPoints.hadeethData, {
      'language': appLanguage,
      'id': hadithId,
    });
  }
}
