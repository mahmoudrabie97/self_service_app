import 'package:flutter/material.dart';
import 'package:self_service_app/pages/home/widgets/homepagebody.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff705A3E),
      // appBar: AppBar(
      //   backgroundColor: Color(0xff705A3E),
      // ),
      body: HomePageBody(),
    );
  }
}
