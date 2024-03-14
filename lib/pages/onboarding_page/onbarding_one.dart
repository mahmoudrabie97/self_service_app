import 'package:flutter/material.dart';
import 'package:self_service_app/pages/onboarding_page/widgets/onboarding_one_body.dart';

class OnBoardingOne extends StatelessWidget {
  const OnBoardingOne({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff705A3E),
      body: OnBoaedingBody(),
    );
  }
}
