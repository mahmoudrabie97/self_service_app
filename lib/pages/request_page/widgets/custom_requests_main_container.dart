import 'package:flutter/material.dart';

import 'package:self_service_app/utlities/app_styles.dart';

import 'custom_requests_row.dart';
import 'custom_requests_sub_container.dart';

class CustomRequestsMainContainer extends StatelessWidget {
  CustomRequestsMainContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * .89,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xffFBFBFB),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: const SingleChildScrollView(
        child: Column(
          children: [
            CustomRequestsRow(),
            CustomRequestsSubContainer(),
            CustomRequestsSubContainer(),
          ],
        ),
      ),
    );
  }
}




