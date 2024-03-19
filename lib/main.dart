import 'package:flutter/material.dart';

import 'package:self_service_app/pages/onboarding_page/onbarding_one.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // canvasColor: AppColor.primary,
        scaffoldBackgroundColor: Colors.brown,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            //backgroundColor: AppColor.primary,
            ),
      ),
      home: OnBoardingOne(),
    );
  }
}
