import 'package:flutter/material.dart';

import '../../../utlities/app_assets.dart';
import '../../../utlities/app_styles.dart';

class CustomListViewEmployees extends StatelessWidget {
  const CustomListViewEmployees({super.key});

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
        child: Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Row(
            children: [
              CircleAvatar(
                child: Image.asset(AssetsData.profile),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 8.0, top: 10),
                child: Column(
                  children: [
                    Text(
                      'Mohamed Ahmed',
                      style: AppStyles.style17,
                    ),
                    Text(
                      'Design Department  ',
                      style: AppStyles.style13,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}