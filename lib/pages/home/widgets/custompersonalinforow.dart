import 'package:flutter/material.dart';

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
        const Row(
          children: [
            CircleAvatar(),
            SizedBox(
              width: 10,
            ),
            Column(
              children: [
                Text(
                  'Mohammmed Ahmed',
                  style: TextStyle(color: Colors.white),
                ),
                Text('Accountant', style: TextStyle(color: Colors.white)),
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
