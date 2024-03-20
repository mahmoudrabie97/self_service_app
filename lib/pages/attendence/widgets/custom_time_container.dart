import 'package:flutter/material.dart';

import '../../../utlities/app_styles.dart';



class CustomTimeContainer extends StatelessWidget {
  const CustomTimeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 180,

      decoration:  BoxDecoration(
        color: const Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Center(child: Text('00 : 00',style: AppStyles.style32,)),
    );
  }
}