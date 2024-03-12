import 'package:flutter/material.dart';


class CustomSmallButtonText extends StatelessWidget {
  const CustomSmallButtonText({Key? key, required this.text, this.onPressed}) : super(key: key);
  final String text;
   final  void Function()?  onPressed;

  @override
  Widget build(BuildContext context) {
  return ElevatedButton(onPressed: onPressed, child: Text(text,), );
  }
}
