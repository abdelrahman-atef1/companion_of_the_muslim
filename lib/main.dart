import 'package:companion_of_the_muslim/view/home.dart';

import 'package:companion_of_the_muslim/shared/network/remote/dio_helper.dart';
import 'package:companion_of_the_muslim/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  DioHelper.dioInit();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      color: AppColors.mainGreen,
      title: 'Companion Of The Muslim ',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
