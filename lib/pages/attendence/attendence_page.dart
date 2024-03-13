import 'package:flutter/material.dart';

import '../../utlities/widgets/custom_appbar.dart';


class AttendencePage extends StatelessWidget {
  const AttendencePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          CustomAppbarMain(text: 'Records', icon: Icons.arrow_back_ios,)

        ],
      ),
    );
  }
}
