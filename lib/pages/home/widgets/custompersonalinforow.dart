import 'package:flutter/material.dart';
import 'package:self_service_app/utlities/app_assets.dart';

class CustomHomeApbar extends StatelessWidget {
  const CustomHomeApbar({
    super.key,
  });

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
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mohammmed Ahmed',
                  style: TextStyle(color: Colors.white),
                ),
                Text('Accountant',
                    style: TextStyle(
                      color: Colors.grey,
                    )),
              ],
            ),
          ],
        ),
        const Spacer(),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_active,
              color: Colors.white,
            )),
      ],
    );
  }
}
