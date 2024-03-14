import 'package:flutter/material.dart';

import 'custom_ietm_row_container.dart';
import 'custom_requests_main_container.dart';




class CustomRequestsRow extends StatelessWidget {
  const CustomRequestsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 40.0,top: 10),
      child: Row(
        children: [
          CustomIetmRowContainer(
            text: 'Status',
          ),
          CustomIetmRowContainer(
            text: 'Type',
          ),
          CustomIetmRowContainer(
            text: 'Sort',
          ),
        ],
      ),
    );
  }
}