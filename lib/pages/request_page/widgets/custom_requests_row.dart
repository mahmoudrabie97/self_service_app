import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_drop_down_button.dart';
import 'custom_type_drop_button.dart';

class CustomRequestsRow extends StatelessWidget {
   CustomRequestsRow({super.key});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30,top: 10.0),
      child: Row(

        children: [
          CustomDropDownButton(
            dropDownValue: 'Status',
          ),SizedBox(width: 8,),
          CustomTypeDropButton(),
          SizedBox(width: 8,),
          CustomDropDownButton(
            dropDownValue: 'Sort',


          ),
        ],
      ),
    );
  }
}


