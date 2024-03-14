import 'package:flutter/material.dart';
import 'package:self_service_app/pages/profile_page/widgets/custom_small_summary_container.dart';

class CustomSummaryItems extends StatelessWidget {
  const CustomSummaryItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 80,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: 1,
          itemBuilder: (index, c) {
            return const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CustomSmallSummaryContaner(
                  title: 'My Tasks',
                  number: '20',
                  icon: Icons.text_snippet,
                ),
                SizedBox(
                  width: 18,
                ),
                CustomSmallSummaryContaner(
                  title: 'My Projects',
                  number: '14',
                  icon: Icons.settings,
                ),
                SizedBox(
                  width: 18,
                ),
                CustomSmallSummaryContaner(
                  title: 'Reminder',
                  number: '15',
                  icon: Icons.notifications_active,
                ),
                SizedBox(
                  width: 18,
                ),
                CustomSmallSummaryContaner(
                  title: 'Activites',
                  number: '3',
                  icon: Icons.person,
                ),
              ],
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              width: 18,
            );
          },
        ),
      ),
    );
  }
}
