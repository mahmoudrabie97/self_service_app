import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:self_service_app/cubit/request_cubit/request_cubit.dart';
import 'package:self_service_app/cubit/request_cubit/requests_states.dart';

import 'package:self_service_app/utlities/app_styles.dart';

import 'custom_requests_row.dart';
import 'custom_requests_sub_container.dart';

class CustomRequestsMainContainer extends StatefulWidget {
  const CustomRequestsMainContainer({super.key});

  @override
  State<CustomRequestsMainContainer> createState() =>
      _CustomRequestsMainContainerState();
}

class _CustomRequestsMainContainerState
    extends State<CustomRequestsMainContainer> {
  @override
  void initState() {
    RequestCubit.get(context).getlistTimeOffRequest(context: context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RequestCubit, RequestStates>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Container(
          height: MediaQuery.sizeOf(context).height * .89,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xffFBFBFB),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
          ),
          child: state is TimeRequestLoadingState
              ? Center(
                  child: CircularProgressIndicator(
                    color: Colors.brown,
                  ),
                )
              : Column(
                  children: [
                    CustomRequestsRow(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height - 200,
                      child: ListView.separated(
                          itemBuilder: (context, index) {
                            return CustomRequestsSubContainer(
                              timeRequestModel:
                                  RequestCubit.get(context).timerequestModel,
                              index: index,
                            );
                          },
                          separatorBuilder: (context, index) {
                            return Divider(
                              thickness: 3,
                            );
                          },
                          itemCount: RequestCubit.get(context)
                              .timerequestModel!
                              .result!
                              .response!
                              .length),
                    ),
                  ],
                ),
        );
      },
    );
  }
}
