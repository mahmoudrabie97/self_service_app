

import 'package:date_picker_timeline/date_picker_widget.dart';

import 'package:flutter/material.dart';

import 'package:self_service_app/utlities/app_styles.dart';



import '../../../utlities/widgets/custombutton.dart';

import 'custom_time_container.dart';

class CustomAttendenceMainContainer extends StatefulWidget {
  const CustomAttendenceMainContainer({super.key});

  @override
  State<CustomAttendenceMainContainer> createState() =>
      _CustomAttendenceMainContainerState();
}

class _CustomAttendenceMainContainerState
    extends State<CustomAttendenceMainContainer> {
  DateTime _selectedValue = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * .89,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xffFBFBFB),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 90,
                child: DatePicker(
                  DateTime.now(),
                  initialSelectedDate: DateTime.now(),
                  selectionColor: const Color(0xff705A3E),
                  selectedTextColor: Colors.white,
                  dayTextStyle: AppStyles.datePackerStyle,
                  monthTextStyle: AppStyles.datePackerStyle,
                  dateTextStyle: AppStyles.datePackerStyle,
                  onDateChange: (date) {
                    // New date selected
                    setState(() {
                      _selectedValue = date;
                    });
                  },
                ),
              ),
              const SizedBox(height: 15,),
             const Text('Working Hours : From 9:00 AM To 5:00 PM ',style: AppStyles.style17,),
              const SizedBox(height: 18,),
              const CustomTimeContainer(),
              const SizedBox(height: 18,),
              CustomButton(
                buttonText: 'Time In ',
                onPressed: () {

                },
                buttonColor: const Color(0xff705A3E),
                borderRadius: (10),
              ),
              const SizedBox(height: 15,),
              CustomButton(
                buttonText: 'Time Out ',
                onPressed: ()
                {

                },
                buttonColor: const Color(0xff705A3E),
                borderRadius: (10),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




