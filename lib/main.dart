import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:self_service_app/cubit/authcubit/authcubit.dart';

import 'package:self_service_app/pages/attendence/attendence_page.dart';
import 'package:self_service_app/pages/home/home_page.dart';
import 'package:self_service_app/pages/login/login_page.dart';
import 'package:self_service_app/pages/onboarding_page/onbarding_one.dart';
import 'package:self_service_app/pages/onboarding_page/onboarding_page.dart';
import 'package:self_service_app/pages/types_of_request/types_of_requests_page.dart';
import 'package:self_service_app/simpleblocobserver.dart';

void main() {
  Bloc.observer = SimpleBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context) => AuthCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          // canvasColor: AppColor.primary,
          scaffoldBackgroundColor: Colors.brown,
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
              //backgroundColor: AppColor.primary,
              ),
        ),
        home: OnBoardingOne(),
      ),
    );
  }
}
