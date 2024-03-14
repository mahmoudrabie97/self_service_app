import 'package:flutter/material.dart';

import '../../../utlities/app_styles.dart';


class CustomRowContainer extends StatelessWidget {
  const CustomRowContainer(
      {Key? key,
        required this.icon,
        required this.title,
        required this.subTitle})
      : super(key: key);
  final IconData icon;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.grey,
        ),
        SizedBox(width: 10,),
        Text(
          title,
          style: AppStyles.style16,
        ),
        Spacer(),
        Text(
          subTitle,
          style: AppStyles.style16,
        ),
      ],
    );
  }
}