import 'package:flutter/material.dart';
import 'package:self_service_app/pages/profile_page/widgets/custom_small_summary_container.dart';

class CustomSummaryItems extends StatelessWidget {
  const CustomSummaryItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        CustomSmallSummaryContaner(
          title: 'My Tasks',
          number: '20',
          icon: Icons.work,
        ),
        CustomSmallSummaryContaner(
          title: 'My Projects',
          number: '14',
          icon: Icons.settings,
        ),
        CustomSmallSummaryContaner(
          title: 'Reminder',
          number: '15',
          icon: Icons.notifications_active,
        ),
        CustomSmallSummaryContaner(
          title: 'Activites',
          number: '3',
          icon: Icons.person,
        ),
      ],
    );
  }
}
