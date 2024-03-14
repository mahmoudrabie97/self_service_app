

import 'package:flutter/material.dart';

import '../../../utlities/widgets/custom_appbar.dart';
import 'custom_attendence_main_container.dart';


class CustomAttendenceBody extends StatelessWidget {
  const CustomAttendenceBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ListView(
      children: [
        CustomAppbarMain(text: 'Records', icon: Icons.arrow_back_ios,),
        CustomAttendenceMainContainer(),

      ],
    );
  }
}
