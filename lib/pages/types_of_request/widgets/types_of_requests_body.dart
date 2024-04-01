import 'package:flutter/material.dart';

import '../../../utlities/widgets/custom_appbar.dart';
import '../../../utlities/widgets/custom_personal_apbar.dart';
import 'custom_types_requests_main_container.dart';


class CustomTypesOfRequestBody extends StatelessWidget {
  const CustomTypesOfRequestBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children:   [
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: CustomPersonalApbar(  title: 'Types of requests', subTitle: '',),
        ),
        const CustomTypesRequestMainContainer(),
      ],
    );
  }
}
