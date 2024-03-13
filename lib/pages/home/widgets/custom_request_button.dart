import 'package:flutter/material.dart';
import 'package:self_service_app/utlities/widgets/customtext.dart';

class CustomRequestButtton extends StatelessWidget {
  const CustomRequestButtton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: SizedBox(
        width: double.infinity,
        height: 44,
        child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              side: const BorderSide(color: Colors.grey, width: 2), // حدود الزر
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10), // تقريب زوايا الزر
              ),
            ),
            child: const CustomText(
              text: 'RequestLevel',
              color: Colors.brown,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            )),
      ),
    );
  }
}
