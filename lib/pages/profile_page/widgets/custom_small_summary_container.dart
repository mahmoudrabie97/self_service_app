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
      height: 80,
      width: 70,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.only(top: 9),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: <Widget>[
                Row(
                  children: [
                    Container(
                        height: 30,
                        decoration: BoxDecoration(
                            color: Colors.brown,
                            borderRadius: BorderRadius.circular(12)),
                        child: Icon(icon, color: Colors.white)),
                    SizedBox(
                      width: 5,
                    ),
                    Text(number,
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                SizedBox(height: 5),
                Expanded(
                  child: CustomText(
                    text: title,
                    color: Colors.brown,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
