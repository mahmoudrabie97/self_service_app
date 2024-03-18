import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:self_service_app/cubit/authcubit/authcubit.dart';
import 'package:self_service_app/cubit/authcubit/authstates.dart';

import '../../../utlities/app_assets.dart';
import '../../../utlities/app_styles.dart';
import 'custom_login_main_container.dart';

class CustomLogInBody extends StatelessWidget {
  const CustomLogInBody({super.key, required this.db});
  final String db;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthStates>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
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
                const SizedBox(
                  height: 10,
                ),
                CustomLoginMainContainer(
                  db: db,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
