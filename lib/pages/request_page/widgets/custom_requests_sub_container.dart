import 'package:flutter/material.dart';
import 'package:self_service_app/models/request_time_model.dart';
import 'package:self_service_app/utlities/app_styles.dart';

import 'custom_linear_conntainer.dart';
import 'custom_requests_small_container.dart';
import 'custom_row_container.dart';

class CustomRequestsSubContainer extends StatelessWidget {
  final TimeRequestModel? timeRequestModel;
  final int index;
  const CustomRequestsSubContainer(
      {super.key, required this.timeRequestModel, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, right: 15, left: 15),
      child: Container(
        height: MediaQuery.sizeOf(context).height * .17,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Colors.brown,
              Colors.white70,
            ],
            stops: [.011, .011],
          ),
          color: Colors.orangeAccent,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
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
                timeRequestModel!.result!.response![index].requestDateFrom ??
                    '',
                style: AppStyles.style16,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Time of request',
                style: AppStyles.style16,
              ),
              SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
