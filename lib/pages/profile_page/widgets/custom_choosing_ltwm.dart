import 'package:flutter/material.dart';
import 'package:self_service_app/utlities/widgets/custom_ietm_container.dart';

class CustomChoosingListItem extends StatelessWidget {
  const CustomChoosingListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomIetmContainer(icon: Icons.text_snippet, text: 'Time Sheet'),
        SizedBox(
          height: 10,
        ),
        CustomIetmContainer(
            icon: Icons.insert_drive_file_outlined, text: 'Employee Details'),
        SizedBox(
          height: 10,
        ),
        CustomIetmContainer(icon: Icons.person, text: 'Attendance'),
        SizedBox(
          height: 10,
        ),
        CustomIetmContainer(icon: Icons.watch_later_outlined, text: 'Requests'),
        SizedBox(
          height: 10,
        ),
        CustomIetmContainer(icon: Icons.home, text: 'My Expenses'),
      ],
    );
  }
}
