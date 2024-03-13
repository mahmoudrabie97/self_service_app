import 'package:flutter/material.dart';
import 'package:self_service_app/pages/home/widgets/customrow_info.dart';

class CustomAnnualLevel extends StatelessWidget {
  const CustomAnnualLevel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Colors.brown,
              Colors.white,
            ],
            stops: [.015, .015],
          ),
          borderRadius: BorderRadius.circular(12)),
      child: const Column(
        children: [
          CustomRowinfo(textinfo: 'Annual Entitlement', numberinfo: '5'),
          CustomRowinfo(
            textinfo: 'Up to date Balance',
            numberinfo: '5',
          ),
          CustomRowinfo(
            textinfo: 'User leaves this year',
            numberinfo: '0',
          ),
          CustomRowinfo(
            textinfo: 'Year’s End Balance',
            numberinfo: '0',
          ),
        ],
      ),
    );
  }
}
