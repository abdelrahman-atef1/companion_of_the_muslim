import 'package:companion_of_the_muslim/modules/home/cubit/cubit.dart';
import 'package:companion_of_the_muslim/modules/home/home.dart';
import 'package:companion_of_the_muslim/shared/bloc_observer.dart';

import 'package:companion_of_the_muslim/shared/network/remote/dio_helper.dart';
import 'package:companion_of_the_muslim/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() {
  BlocOverrides.runZoned(
    () async {
      await Hive.initFlutter();
      DioHelper.dioInit();
      runApp(const MyApp());
    },
    blocObserver: MyBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (ctx) => HomeCubit()),
      ],
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        color: AppColors.mainGreen,
        title: 'Companion Of The Muslim ',
        debugShowCheckedModeBanner: false,
        home: const HomeScreen(),
      ),
    );
  }
}
