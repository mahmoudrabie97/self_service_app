import 'package:flutter/material.dart';
import 'package:self_service_app/utlities/app_assets.dart';

class CustomPersonalApbar extends StatelessWidget {
   CustomPersonalApbar({
    super.key,
    required this.title,
    required this.subTitle,
    this.icon = Icons.notifications_active,
  });

  final String title;
  final String subTitle;
   IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            color: Colors.white,
            onPressed: () {},
            icon: const Icon(Icons.arrow_back_ios)),
        Row(
          children: [
            CircleAvatar(
              child: Image.asset(AssetsData.profile),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(color: Colors.white),
                ),
                Text(subTitle,
                    style: const TextStyle(
                      color: Colors.grey,
                    )),
              ],
            ),
          ],
        ),
        const Spacer(),
        IconButton(
            onPressed: () {},
            icon: Icon(
              icon,
              color: Colors.white,
            )),
      ],
    );
  }
}
