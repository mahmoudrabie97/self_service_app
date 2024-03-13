import 'package:flutter/material.dart';

import '../../../utlities/app_assets.dart';
import '../../../utlities/app_styles.dart';
import 'custom_login_main_container.dart';

class CustomLogInBody extends StatelessWidget {
  const CustomLogInBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 28.0),
      child: SingleChildScrollView(
        child: Column(


          children: [

            Image.asset(AssetsData.logo),
            const Text(
              'مجموعة المهندس القابضة ',
              style: AppStyles.style18,
            ),
            const Text(
              'Engineer Holding Group',
              style: AppStyles.style18,
            ),
             const SizedBox(height: 10,),
             const CustomLoginMainContainer(),
          ],
        ),
      ),
    );
  }
}


