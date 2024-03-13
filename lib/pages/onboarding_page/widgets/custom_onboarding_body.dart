import 'package:flutter/material.dart';
import 'package:self_service_app/utlities/app_assets.dart';
import 'package:self_service_app/utlities/app_styles.dart';

import '../../../utlities/custommethods.dart';
import '../../../utlities/widgets/customtextformfield.dart';
import 'check_box_onboarding_row.dart';

class CustomOnBoardingBody extends StatelessWidget {
  const CustomOnBoardingBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 18.0,
        top: 60,
        right: 6,
      ),
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
          const Spacer(),
          CustomTextFormField(
            hintText: 'Server Address',
            hinnntcolr: Colors.grey,
            keyboardType: TextInputType.text,
            validator: (value) {
              if (value!.isEmpty) {
                return 'please enter your email';
              } else if (!isEmailValid(value)) {
                return 'Invalid email format';
              }
              return null;
            },
          ),
          const Row(
            children: [
              CheckBox(),
              Text(
                'Remember me',
                style: AppStyles.style15,
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          CustomTextFormField(
            hintText: 'Login',
            hinnntcolr: Colors.white,
            keyboardType: TextInputType.text,
            fillColor: Colors.brown,
            validator: (value) {
              if (value!.isEmpty) {
                return 'please enter your email';
              } else if (!isEmailValid(value)) {
                return 'Invalid email format';
              }
              return null;
            },
          ),
          const SizedBox(
            height: 90,
          ),
        ],
      ),
    );
  }
}
