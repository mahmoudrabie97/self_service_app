import 'package:flutter/material.dart';

import '../appcolors.dart';

class CustomAppbarMain extends StatelessWidget {
  const CustomAppbarMain(
      {Key? key, required this.text, required this.icon, this.onPressed})
      : super(key: key);

  final String text;
  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: Row(
        children: [
          IconButton(
            onPressed: onPressed,
            icon: Icon(
              icon,
              color: AppColor.whiteColor,
            ),
          ),
          const SizedBox(
            width: 80,
          ),
          Text(
            text,
          ),
        ],
      ),
    );
  }
}
