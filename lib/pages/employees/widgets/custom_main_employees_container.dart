import 'package:flutter/material.dart';

import '../../../utlities/app_styles.dart';
import '../../request_page/widgets/custom_drop_down_button.dart';
import '../../../utlities/widgets/customtextformfield.dart';
import '../employees.dart';
import 'custom_list_view_employees.dart';
import 'empolyees_custom_drop_down_button.dart';

class CustomMainEmployeesContainer extends StatelessWidget {
  const CustomMainEmployeesContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .88,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18), color: Color(0xffFBFBFB)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            EmployeesCustomDropDownButton(dropDownValue: 'Sigma Code Company ',),
            SizedBox(height: 16,),
            Text(
              'Employees ',
              style: AppStyles.style17.copyWith(color: Color(0xff263238)),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return const CustomListViewEmployees();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}