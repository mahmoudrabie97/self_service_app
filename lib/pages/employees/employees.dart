import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:self_service_app/pages/employees/widgets/custom_main_employees_container.dart';
import 'package:self_service_app/utlities/app_styles.dart';
import 'package:self_service_app/utlities/widgets/custom_personal_apbar.dart';
import 'package:self_service_app/utlities/widgets/customtextformfield.dart';

import '../../utlities/app_assets.dart';

class EmployeesPage extends StatelessWidget {
  const EmployeesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomEmployeesBody(),
    );
  }
}

class CustomEmployeesBody extends StatelessWidget {
  const CustomEmployeesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CustomPersonalApbar(
          title: '',
          subTitle: '',
        ),
        const CustomMainEmployeesContainer(),
      ],
    );
  }
}




