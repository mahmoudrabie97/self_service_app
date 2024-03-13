import 'package:flutter/material.dart';
import 'package:self_service_app/pages/home/widgets/customrow_info.dart';

class CustomInformationWorking extends StatelessWidget {
  const CustomInformationWorking({
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
          CustomRowinfo(textinfo: 'Working days', numberinfo: '5'),
          CustomRowinfo(
            textinfo: 'Days with incomplete records',
            numberinfo: '5',
          ),
          CustomRowinfo(
            textinfo: 'Absent',
            numberinfo: '0',
          ),
          CustomRowinfo(
            textinfo: 'No attendance required',
            numberinfo: '0',
          ),
          CustomRowinfo(
            textinfo: 'Days off',
            numberinfo: '0',
          ),
        ],
      ),
    );
  }
}
