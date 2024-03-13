import 'package:flutter/material.dart';
import 'package:self_service_app/pages/home/widgets/custom_annualleve.dart';
import 'package:self_service_app/pages/home/widgets/custom_request_button.dart';
import 'package:self_service_app/pages/home/widgets/custominformation_container.dart';
import 'package:self_service_app/pages/home/widgets/custompersonalinforow.dart';
import 'package:self_service_app/utlities/widgets/customtext.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Column(
        children: [
          const CustomHomeApbar(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 0, right: 0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xffF0F0F0),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: 30, bottom: 25, left: 12, right: 12),
                      child: CustomInformationWorking(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 18),
                      child: Text(
                        'Annual Leave (2024)',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: 25, bottom: 25, left: 12, right: 12),
                      child: CustomAnnualLevel(),
                    ),
                    CustomRequestButtton()
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
