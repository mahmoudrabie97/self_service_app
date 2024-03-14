import 'package:flutter/material.dart';

import '../../../utlities/widgets/custom_appbar.dart';
import 'custom_types_requests_main_container.dart';


class CustomTypesOfRequestBody extends StatelessWidget {
  const CustomTypesOfRequestBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children:  [
        CustomAppbarMain(text: 'Types of requests', icon: Icons.arrow_back_ios,),
        CustomTypesRequestMainContainer(),
      ],
    );
  }
}
