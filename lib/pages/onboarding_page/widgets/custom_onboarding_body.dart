import 'package:flutter/material.dart';
import 'package:self_service_app/pages/login/login_page.dart';
import 'package:self_service_app/utlities/app_assets.dart';
import 'package:self_service_app/utlities/extentionhelper.dart';
import 'package:self_service_app/utlities/widgets/custombutton.dart';
import 'package:self_service_app/utlities/widgets/customtext.dart';

import '../../../utlities/widgets/customtextformfield.dart';
import 'check_box_onboarding_row.dart';

class CustomOnBoardingBody extends StatefulWidget {
  const CustomOnBoardingBody({super.key});

  @override
  State<CustomOnBoardingBody> createState() => _CustomOnBoardingBodyState();
}

class _CustomOnBoardingBodyState extends State<CustomOnBoardingBody> {
  final TextEditingController _serverController = TextEditingController();
  @override
  void initState() {
    _serverController.text = 'http://hr_app.erpmakeen.com:8079';
    super.initState();
  }

  final formkey = GlobalKey<FormState>();

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
        child: Form(
          key: formkey,
          child: Column(
            children: [
              Image.asset(AssetsData.logo),
              Image.asset(AssetsData.engineer),
              const Spacer(),
              CustomTextFormField(
                controller: _serverController,
                hintText: 'Server Address',
                hinnntcolr: Colors.grey,
                keyboardType: TextInputType.text,
                validator: (value) {
                  RegExp serverRegex = RegExp(r'^http:\/\/.*\.com.*$');
                  if (value!.isEmpty) {
                    return 'please the Server Address';
                  } else if (!serverRegex.hasMatch(value)) {
                    return 'enter a valid Server Adress';
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
                  if (formkey.currentState!.validate()) {
                    List<String> parts = _serverController.text.split('.');
                    String serverdb = parts[0].split('//')[1];

                    context.push(LogInPage(
                      db: serverdb,
                    ));
                  }
                },
                buttonColor: Colors.brown,
              ),
              const SizedBox(
                height: 90,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
