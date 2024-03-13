

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_calendar/flutter_advanced_calendar.dart';

import '../../../utlities/app_styles.dart';
import '../../../utlities/custommethods.dart';
import '../../../utlities/widgets/custombutton.dart';
import '../../../utlities/widgets/customtextformfield.dart';
import '../../login/widgets/custom_login_row.dart';
import 'custom_field_row.dart';

class CustomAttendenceMainContainer extends StatelessWidget {
   CustomAttendenceMainContainer({super.key});
  final _calendarControllerToday = AdvancedCalendarController.today();
  final _calendarControllerCustom =
  AdvancedCalendarController(DateTime(2022, 10, 23));
  final events = <DateTime>[
    DateTime.now(),
    DateTime(2022, 10, 10),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * .89,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: ListView(
        children: [
          AdvancedCalendar(
            controller: _calendarControllerCustom,
            events: events,
            weekLineHeight: 48.0,
            startWeekDay: 1,
            innerDot: true,
            keepLineSize: true,
            calendarTextStyle: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              height: 1.3125,
              letterSpacing: 0,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: CustomTextFormField(
              hintText: 'Day off',
              hinnntcolr: Colors.grey,
              keyboardType: TextInputType.text,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'please enter your email';
                } else if (!isEmailValid(value)) {
                  return 'Invalid email format';
                }
                return null;
              },
            ),
          ),
          const SizedBox(height: 15,),
          const Padding(
            padding: EdgeInsets.only(left: 12.0,right: 12),
            child: CustomFieldColumn(),
          ),

        ],
      ),

    );
  }
}
