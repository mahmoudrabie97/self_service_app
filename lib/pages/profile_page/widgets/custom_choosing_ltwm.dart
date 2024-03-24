import 'package:flutter/material.dart';
import 'package:self_service_app/pages/employees/employees.dart';
import 'package:self_service_app/utlities/extentionhelper.dart';
import 'package:self_service_app/utlities/widgets/custom_ietm_container.dart';

class CustomChoosingListItem extends StatelessWidget {
  const CustomChoosingListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const CustomIetmContainer(icon: Icons.text_snippet, text: 'Time Sheet',),
        const SizedBox(
          height: 10,
        ),
        CustomIetmContainer(
            icon: Icons.insert_drive_file_outlined, text: 'Employee Details',onPressed: (){
              context.push(const EmployeesPage());
        },),
        const SizedBox(
          height: 10,
        ),
        const CustomIetmContainer(icon: Icons.person, text: 'Attendance'),
        const SizedBox(
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
