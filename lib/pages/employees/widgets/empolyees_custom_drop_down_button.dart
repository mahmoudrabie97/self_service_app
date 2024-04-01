import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EmployeesCustomDropDownButton extends StatefulWidget {
  EmployeesCustomDropDownButton({super.key, required this.dropDownValue});
  String dropDownValue;

  @override
  State<EmployeesCustomDropDownButton> createState() => _CustomDropDownButtonState();
}

class _CustomDropDownButtonState extends State<EmployeesCustomDropDownButton> {

  @override

  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: DropdownButton<String>(
        isExpanded: true,
        value: widget.dropDownValue,

        icon: const Icon(
          Icons.keyboard_arrow_down,
          //size: 25,

          color: Colors.brown,
        ),
        onChanged: (String? newValue) {
          setState(()
          {

            widget.dropDownValue = newValue!;

          }
          );

        },
        items: const [
          DropdownMenuItem(
            value: 'Sigma Code Company ',
            child: Text(
              'Sigma Code Company ',
              style: TextStyle(
                color: Colors.brown,
              ),
            ),
          ),
          DropdownMenuItem(
            value: 'Programming Company ',
            child: Text('Programming Company ',
              style: TextStyle(
                color: Colors.brown,
              ),),
          ),
          DropdownMenuItem(
            value: 'Test Company',
            child: Text('Test Company',
              style: TextStyle(
                color: Colors.brown,
              ),),
          ),
        ],
      ),
    );
  }
}
