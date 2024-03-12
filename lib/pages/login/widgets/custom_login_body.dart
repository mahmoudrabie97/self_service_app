
import 'package:flutter/material.dart';

import '../../../utlities/app_assets.dart';
import '../../../utlities/app_styles.dart';


class CustomLogInBody extends StatelessWidget {
  const CustomLogInBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(AssetsData.onBoarding),
        const Text('مجموعة المهندس القابضة ',style: AppStyles.style18,),
        const Text('Engineer Holding Group',style: AppStyles.style18,),
      ],
    );
  }
}
