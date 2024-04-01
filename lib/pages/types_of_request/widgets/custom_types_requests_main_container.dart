
import 'package:flutter/material.dart';



import '../../../utlities/widgets/custom_ietm_container.dart';


class CustomTypesRequestMainContainer extends StatelessWidget {
  const CustomTypesRequestMainContainer({super.key});

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
              icon: Icons.email,
              text: 'Letter Requests',
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
              icon: Icons.clean_hands_sharp,
              text: 'Loan Requests',
            ),
            SizedBox(
              height: 17,
            ),
            CustomIetmContainer(
              icon: Icons.featured_play_list_sharp,
              text: 'Purchase Requests',
            ),
          ],
        ),
      ),
    );
  }
}
