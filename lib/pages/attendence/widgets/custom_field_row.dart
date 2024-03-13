import 'package:flutter/material.dart';

import '../../../utlities/custommethods.dart';
import '../../../utlities/widgets/customtextformfield.dart';


class CustomFieldColumn extends StatelessWidget {
  const CustomFieldColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Row(
          children: [
            Expanded(
              child: SizedBox(
                height: 50,
                child: CustomTextFormField(
                  hintText: 'First In',
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
            ),
            const SizedBox(width: 5,),
            Expanded(
              child: SizedBox(
                height: 50,
                child: CustomTextFormField(
                  hintText: 'Last Out',
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
            ),
          ],
        ),
        const SizedBox(height: 10,),
        Row(
          children: [
            Expanded(
              child: SizedBox(
                height: 50,
                child: CustomTextFormField(
                  hintText: 'Worked',
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
            ),
            const SizedBox(width: 5,),
            Expanded(
              child: SizedBox(
                height: 50,
                child: CustomTextFormField(
                  hintText: 'Difference',
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
            ),
          ],
        ),
      ],
    );
  }
}
