

import 'package:flutter/material.dart';

class CustomTypeDropButton extends StatefulWidget {
  CustomTypeDropButton({super.key});
  String dropDownValue = 'Letter Requests';
  @override
  State<CustomTypeDropButton> createState() => _CustomTypeDropButtonState();
}

class _CustomTypeDropButtonState extends State<CustomTypeDropButton> {


  @override
  Widget build(BuildContext context) {
    return   Container(
      height: 40,
      width: 180,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: DropdownButton<String>(
        value: widget.dropDownValue,
        icon: const Icon(
          Icons.keyboard_arrow_down,
          //size: 25,
          color: Colors.brown,
        ),
        onChanged: (String? newValue) {
          setState(() {
            widget.dropDownValue = newValue!;
          });
        },
        items: const [
          DropdownMenuItem(
            value: 'Time off requests',
            child: Text(
              'Time off requests',
              style: TextStyle(
                color: Colors.brown,
              ),
            ),
          ),
          DropdownMenuItem(
            value: 'My Expenses',
            child: Text(
              'My Expenses',
              style: TextStyle(
                color: Colors.brown,
              ),
            ),
          ),
          DropdownMenuItem(
            value: 'Letter Requests',
            child: Text(
              'Letter Requests',
              style: TextStyle(
                color: Colors.brown,
              ),
            ),
          ),
          DropdownMenuItem(
            value: 'Maintenance request',
            child: Text(
              'Maintenance request',
              style: TextStyle(
                color: Colors.brown,
              ),
            ),
          ),
          DropdownMenuItem(
            value: 'Loan Requests',
            child: Text(
              'Loan Requests',
              style: TextStyle(
                color: Colors.brown,
              ),
            ),
          ),
          DropdownMenuItem(
            value: 'Purchase Requests',
            child: Text(
              'Purchase Requests',
              style: TextStyle(
                color: Colors.brown,
              ),
            ),
          ),
        ],
      ),
    );
  }
}