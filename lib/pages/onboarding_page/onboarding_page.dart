import 'package:flutter/material.dart';
import 'package:self_service_app/pages/onboarding_page/widgets/custom_onboarding_body.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomOnBoardingBody(),
    );
  }
}
