import 'package:flutter/material.dart';

import '../../../utlities/app_styles.dart';


class CustomIetmRowContainer extends StatelessWidget {
  const CustomIetmRowContainer({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 50,
        width: 105,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 9.0),
              child: Text(
                text,
                style: AppStyles.style15.copyWith(color: const Color(0xff705A3E)),
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.keyboard_arrow_down,
                //size: 25,
                color: Color(0xff705A3E),
              ),
            ),
          ],
        ),
      ),
    );
  }
}