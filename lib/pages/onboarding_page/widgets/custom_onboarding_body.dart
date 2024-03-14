import 'package:flutter/material.dart';
import 'package:self_service_app/pages/login/login_page.dart';
import 'package:self_service_app/utlities/app_assets.dart';
import 'package:self_service_app/utlities/app_styles.dart';
import 'package:self_service_app/utlities/extentionhelper.dart';
import 'package:self_service_app/utlities/widgets/custombutton.dart';
import 'package:self_service_app/utlities/widgets/customtext.dart';

import '../../../utlities/custommethods.dart';
import '../../../utlities/widgets/customtextformfield.dart';
import 'check_box_onboarding_row.dart';

class CustomOnBoardingBody extends StatelessWidget {
  const CustomOnBoardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          alignment: Alignment.center,
          opacity: 2,
          fit: BoxFit.cover,
          image: AssetImage(
            AssetsData.background,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 18.0,
          top: 60,
          right: 6,
        ),
        child: Column(
          children: [
            Image.asset(AssetsData.logo),
            Image.asset(AssetsData.engineer),
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
                CustomText(
                  text: 'Remember me',
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            CustomButton(
              buttonText: 'Login',
              onPressed: () {
                context.push(LogInPage());
              },
              buttonColor: Colors.brown,
            ),
            const SizedBox(
              height: 90,
            ),
          ],
        ),
      ),
    );
  }
}
