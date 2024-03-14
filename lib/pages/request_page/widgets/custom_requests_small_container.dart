import 'package:flutter/material.dart';

import '../../../utlities/app_styles.dart';

class CustomRequestsSmallContainer extends StatelessWidget {
  const CustomRequestsSmallContainer(
      {Key? key, required this.width, required this.text})
      : super(key: key);
  final double width;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: width,
      decoration: BoxDecoration(
        color: Color(0xffDFCDAF),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
          child: Text(
            text,
            style: AppStyles.style17,
          )),
    );
  }
}