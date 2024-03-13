import 'package:flutter/material.dart';

class CustomRowinfo extends StatelessWidget {
  final String textinfo;
  final String numberinfo;
  const CustomRowinfo({
    super.key,
    required this.textinfo,
    required this.numberinfo,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            textinfo,
            style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          Text(
            numberinfo,
            style: TextStyle(fontSize: 17),
          ),
        ],
      ),
    );
  }
}
