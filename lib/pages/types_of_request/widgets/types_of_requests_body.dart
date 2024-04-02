import 'package:flutter/material.dart';
import 'package:self_service_app/utlities/widgets/custom_personal_apbar.dart';

import '../../../utlities/widgets/custom_appbar.dart';
import 'custom_types_requests_main_container.dart';


class CustomTypesOfRequestBody extends StatelessWidget {
  const CustomTypesOfRequestBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children:  [
        Padding(
          padding: const EdgeInsets.only(top: 12.0,bottom: 8),
          child: CustomHomeApbar(title: 'Types of requests', subTitle: '',),
        ),
        CustomTypesRequestMainContainer(),
      ],
    );
  }
}
