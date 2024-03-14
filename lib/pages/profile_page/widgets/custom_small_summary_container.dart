import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:self_service_app/utlities/widgets/customtext.dart';

class CustomSmallSummaryContaner extends StatelessWidget {
  const CustomSmallSummaryContaner({
    super.key,
    required this.title,
    required this.number,
    required this.icon,
  });
  final String title;
  final String number;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            children: <Widget>[
              Row(
                children: [
                  Icon(icon, size: 40, color: Colors.brown),
                  Text(number, style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
              CustomText(
                text: title,
                color: Colors.brown,
                fontSize: 12,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
