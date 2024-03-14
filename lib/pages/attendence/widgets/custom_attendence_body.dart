

import 'package:flutter/material.dart';

import '../../../utlities/widgets/custom_appbar.dart';
import 'custom_attendence_main_container.dart';


class CustomAttendenceBody extends StatelessWidget {
  const CustomAttendenceBody({super.key});

  @override

  Widget build(BuildContext context) {
    return  ListView(
      children: [
        const CustomAppbarMain(text: 'Records', icon: Icons.arrow_back_ios,),
        CustomAttendenceMainContainer(),

      ],
    );
  }
}
