import 'package:flutter/material.dart';

import 'package:self_service_app/utlities/widgets/custom_personal_apbar.dart';
import 'package:self_service_app/pages/profile_page/widgets/custom_choosing_ltwm.dart';
import 'package:self_service_app/pages/profile_page/widgets/custom_summary_items.dart';
import 'package:self_service_app/pages/profile_page/widgets/customtimercontainer.dart';

import 'package:self_service_app/utlities/widgets/customtext.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
            CustomHomeApbar(title: 'Mohammmed Ahmed', subTitle: 'Accountant', icon: Icons.notifications_active,
               ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 0, right: 0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xffF0F0F0),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: ListView(
                  children: const [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: 40, bottom: 25, left: 30, right: 12),
                          child: Row(
                            children: [
                              CustomtimerContainer(
                                  iconallyarrow: Icons.arrow_downward_rounded,
                                  timely: '10:22 pm'),
                              SizedBox(
                                width: 20,
                              ),
                              CustomtimerContainer(
                                  iconallyarrow: Icons.arrow_downward_rounded,
                                  timely: 'Time Out'),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: EdgeInsets.only(left: 22, bottom: 20),
                          child: CustomText(
                            text: 'Summary',
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        CustomSummaryItems(),
                        SizedBox(
                          height: 30,
                        ),
                        CustomChoosingListItem()
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
