

import 'package:flutter/material.dart';
import 'package:self_service_app/utlities/widgets/custom_appbar.dart';

import 'custom_requests_main_container.dart';


class CustomRequestsBody extends StatelessWidget {
  const CustomRequestsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children:  [
        const CustomAppbarMain(text: 'Requests', icon: Icons.arrow_back_ios_rounded),
        CustomRequestsMainContainer(),
      ],
    );
  }

}
