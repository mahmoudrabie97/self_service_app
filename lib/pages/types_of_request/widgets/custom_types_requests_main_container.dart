import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../../../utlities/app_assets.dart';
import '../../../utlities/app_styles.dart';
import '../../../utlities/custommethods.dart';
import '../../../utlities/widgets/custom_ietm_container.dart';
import '../../../utlities/widgets/custombutton.dart';
import '../../../utlities/widgets/customtextformfield.dart';
import '../../login/widgets/custom_login_row.dart';

class CustomTypesRequestMainContainer extends StatelessWidget {
  CustomTypesRequestMainContainer({super.key});

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
      child: const Padding(
        padding: EdgeInsets.only(right: 15.0, left: 15.0, top: 50.0),
        child: Column(
          children: [
            CustomIetmContainer(
              icon: Icons.watch_later_rounded,
              text: 'Time off requests',
            ),
            SizedBox(
              height: 17,
            ),
            CustomIetmContainer(
              icon: Icons.home_repair_service_outlined,
              text: 'My Expenses',
            ),
            SizedBox(
              height: 17,
            ),
            CustomIetmContainer(
              icon: Icons.settings,
              text: 'Maintenance request',
            ),
            SizedBox(
              height: 17,
            ),
            CustomIetmContainer(
              icon: Icons.email,
              text: 'Letter Requests',
            ),
          ],
        ),
      ),
    );
  }
}
