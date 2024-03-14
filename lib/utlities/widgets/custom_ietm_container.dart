import 'package:flutter/material.dart';
import 'package:self_service_app/utlities/app_styles.dart';

class CustomIetmContainer extends StatelessWidget {
  const CustomIetmContainer(
      {super.key, required this.icon, required this.text});
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Colors.brown,
              Colors.white,
            ],
            stops: [.011, .011],
          ),
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        child: Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Container(
              height: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4), color: Colors.brown),
              child: Icon(
                icon,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Text(
              text,
              style: AppStyles.style17,
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
      ),
    );
  }
}
