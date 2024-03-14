import 'package:flutter/material.dart';
import 'package:self_service_app/utlities/app_styles.dart';

import 'custom_linear_conntainer.dart';
import 'custom_requests_small_container.dart';
import 'custom_row_container.dart';

class CustomRequestsSubContainer extends StatelessWidget {
  const CustomRequestsSubContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0, right: 15, left: 15),
      child: Container(
        height: MediaQuery.sizeOf(context).height * .4,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Colors.brown,
              Colors.white,
            ],
            stops: [.011, .011],
          ),
          color: Colors.orangeAccent,
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Padding(
          padding: EdgeInsets.only(left: 20.0, top: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Punch Correction Request ',
                    style: AppStyles.style17,
                  ),
                  Spacer(),
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.lightGreen,
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Text(
                'Mon, 5 Jan 2024 3:40 PM',
                style: AppStyles.style16,
              ),
              SizedBox(height: 5,),
              CustomLinearContainer(),
              SizedBox(height: 10,),
              Row(
                children: [
                  Icon(
                    Icons.text_snippet_sharp,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 10,),
                  Text(
                    'Request Type',
                    style: AppStyles.style16,
                  ),
                  Spacer(),
                  CustomRequestsSmallContainer(
                    width: 100,
                    text: 'Correction',
                  ),
                  SizedBox(width: 5,),
                  CustomRequestsSmallContainer(
                    width: 55,
                    text: 'IN',
                  ),
                ],
              ),
              CustomRowContainer(
                icon: Icons.person_sharp,
                title: 'Attendance Day',
                subTitle: 'Mon, 5 Jan ',
              ),
              CustomRowContainer(
                icon: Icons.watch_later_rounded,
                title: 'Request ID',
                subTitle: '12344',
              ),
              SizedBox(height: 10,),
              CustomLinearContainer(),
              SizedBox(height: 10,),
              Row(
                children: [
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.lightGreen,
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                  SizedBox(width: 10,),
                  Text(
                    'Request approved by all managers ',
                    style: AppStyles.style16,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


