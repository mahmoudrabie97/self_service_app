import 'package:flutter/material.dart';

import 'custom_drop_down_button.dart';

class CustomRequestsRow extends StatelessWidget {
  const CustomRequestsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 60.0, top: 10, right: 60.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomDropDownButton(
            dropDownValue: 'Status',
          ),
          CustomDropDownButton(
            dropDownValue: 'Type',
          ),
          CustomDropDownButton(
            dropDownValue: 'Sort',
          ),
        ],
      ),
    );
  }
}
