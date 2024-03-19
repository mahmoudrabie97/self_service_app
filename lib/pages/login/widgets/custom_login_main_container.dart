import 'package:flutter/material.dart';
import 'package:self_service_app/cubit/authcubit/authcubit.dart';
import 'package:self_service_app/cubit/authcubit/authstates.dart';
import 'package:self_service_app/root_bottom_nav.dart';
import 'package:self_service_app/utlities/app_styles.dart';
import 'package:self_service_app/utlities/extentionhelper.dart';

import '../../../utlities/custommethods.dart';
import '../../../utlities/widgets/custombutton.dart';
import '../../../utlities/widgets/customtextformfield.dart';
import 'custom_login_row.dart';

class CustomLoginMainContainer extends StatelessWidget {
  CustomLoginMainContainer({super.key, required this.db});
  final formkey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final String db;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * .84,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 80.0,
          right: 12,
          left: 12,
        ),
        child: Form(
          key: formkey,
          child: Column(
            children: [
              const Text(
                'Welcome Back ',
                style: AppStyles.style32,
              ),
              const SizedBox(
                height: 30,
              ),
              CustomTextFormField(
                hintText: 'Email',
                hinnntcolr: Colors.grey,
                keyboardType: TextInputType.text,
                controller: _emailController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'please enter your email';
                  } // else if (!isEmailValid(value)) {
                  // return 'Invalid email format';
                  // }
                  return null;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextFormField(
                controller: _passwordController,
                hintText: 'Password',
                hinnntcolr: Colors.grey,
                keyboardType: TextInputType.text,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'please enter your email';
                  }
                  return null;
                },
              ),
              const CustomLoginRow(),
              AuthCubit.get(context).state is LoginLoadingState
                  ? const SizedBox(
                      height: 30,
                      width: 30,
                      child: CircularProgressIndicator(
                        color: Colors.brown,
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: CustomButton(
                        buttonText: 'Login',
                        onPressed: () {
                          if (formkey.currentState!.validate()) {
                            AuthCubit.get(context).loginUser(
                                email: _emailController.text,
                                password: _passwordController.text,
                                db: db,
                                context: context);
                          }
                        },
                        buttonColor: Colors.brown,
                        borderRadius: (10),
                      ),
                    )
            ],
          ),
        ),
      ),
    );
  }
}
