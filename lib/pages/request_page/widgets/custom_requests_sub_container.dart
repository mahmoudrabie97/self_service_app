


import 'package:flutter/material.dart';



class CustomRequestsSubContainer extends StatelessWidget {
  const CustomRequestsSubContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0,right: 15,left: 15),
      child: Container(
        height: MediaQuery.sizeOf(context).height * .4,
        width: double.infinity,

        decoration:  BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Colors.brown,
              Colors.white,
            ],
            stops: [.011, .011],
          ),
          color: Colors.orangeAccent,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}