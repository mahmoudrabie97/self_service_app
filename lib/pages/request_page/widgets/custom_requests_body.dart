

import 'package:flutter/material.dart';
import 'package:self_service_app/utlities/widgets/custom_appbar.dart';

import '../../../utlities/widgets/custom_personal_apbar.dart';
import 'custom_requests_main_container.dart';


class CustomRequestsBody extends StatelessWidget {
  const CustomRequestsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children:  [
         Padding(
           padding: const EdgeInsets.only(top: 10.0,bottom: 6),
           child: CustomHomeApbar(title: 'Requests', subTitle: '',),
         ),
        CustomRequestsMainContainer(),
      ],
    );
  }

}
