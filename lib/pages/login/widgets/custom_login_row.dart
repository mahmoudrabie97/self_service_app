import 'package:flutter/material.dart';

import '../../../utlities/app_styles.dart';
import '../../onboarding_page/widgets/check_box_onboarding_row.dart';

class CustomLoginRow extends StatelessWidget {
  const CustomLoginRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: 17.0,top: 13),
      child: Row(
        children: [
          CheckBox(),
          Text(
            'Remember me',
            style: AppStyles.style16,
          ),
          Spacer(),
          Text('Forget Password ?',style: AppStyles.style16,),

        ],
      ),
    );
  }
}
