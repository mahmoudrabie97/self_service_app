import 'package:flutter/material.dart';
import 'package:self_service_app/pages/attendence/widgets/custom_attendence_body.dart';

import '../../utlities/widgets/custom_appbar.dart';


class AttendencePage extends StatelessWidget {
  const AttendencePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomAttendenceBody(),
    );
  }
}
