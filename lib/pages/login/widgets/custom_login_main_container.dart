import 'package:flutter/material.dart';

class CustomLoginMainContainer extends StatelessWidget {
  const CustomLoginMainContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(


      height:  MediaQuery.sizeOf(context).height * .2,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),



    );
  }
}
