import 'package:flutter/material.dart';

class CustomDropDownButton extends StatefulWidget {
  CustomDropDownButton({Key? key, required this.dropDownValue})
      : super(key: key);
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
            child: Text(
              'Status',
              style: TextStyle(
                color: Colors.brown,
              ),
            ),
            value: 'Status',
          ),
          DropdownMenuItem(
            child: Text('Type',
              style: TextStyle(
                color: Colors.brown,
              ),),
            value: 'Type',
          ),
          DropdownMenuItem(
            child: Text('Sort',
              style: TextStyle(
                color: Colors.brown,
              ),),
            value: 'Sort',
          ),
        ],
      ),
    );
  }
}
