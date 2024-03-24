import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:self_service_app/cubit/request_cubit/request_cubit.dart';
import 'package:self_service_app/cubit/request_cubit/requests_states.dart';
import 'package:self_service_app/pages/home/widgets/homepagebody.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff705A3E),
      // appBar: AppBar(
      //   backgroundColor: Color(0xff705A3E),
      // ),
      body: BlocConsumer<RequestCubit, RequestStates>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return HomePageBody();
        },
      ),
    );
  }
}
