import 'package:flutter/material.dart';

class CustomDropDownButton extends StatefulWidget {
  CustomDropDownButton({super.key, required this.dropDownValue});
  String dropDownValue;

  @override
  State<CustomDropDownButton> createState() => _CustomDropDownButtonState();
}

class _CustomDropDownButtonState extends State<CustomDropDownButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 90,
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
            value: 'Status',
            child: Text(
              'Status',
              style: TextStyle(
                color: Colors.brown,
              ),
            ),
          ),
          DropdownMenuItem(
            value: 'Type',
            child: Text(
              'Type',
              style: TextStyle(
                color: Colors.brown,
              ),
            ),
          ),
          DropdownMenuItem(
            value: 'Sort',
            child: Text(
              'Sort',
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
