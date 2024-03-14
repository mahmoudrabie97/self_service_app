import 'package:flutter/material.dart';
import 'package:self_service_app/pages/onboarding_page/onboarding_page.dart';
import 'package:self_service_app/utlities/app_assets.dart';
import 'package:self_service_app/utlities/extentionhelper.dart';

class OnBoaedingBody extends StatefulWidget {
  const OnBoaedingBody({super.key});

  @override
  State<OnBoaedingBody> createState() => _OnBoaedingBodyState();
}

class _OnBoaedingBodyState extends State<OnBoaedingBody> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      context.push(OnBoardingPage());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(AssetsData.logo),
          Image.asset(AssetsData.engineer),
        ],
      ),
    );
  }
}
