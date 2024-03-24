import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:self_service_app/cubit/request_cubit/requests_states.dart';
import 'package:self_service_app/utlities/extentionhelper.dart';

import '../../models/user_model.dart';
import '../../network/api.dart';
import '../../network/endpoints.dart';
import '../../root_bottom_nav.dart';
import '../../utlities/constants.dart';
import '../../utlities/widgets/showdialog.dart';

class RequestCubit extends Cubit<RequestStates> {
  RequestCubit() : super(RequestInitialState());
  static RequestCubit get(context) => BlocProvider.of(context);

  void getlistTimeOffRequest({
    required BuildContext context,
  }) {
    Map<String, String> headers = {
      'Content-Type': 'application/json',
      //'Authorization': 'Bearer ${AppConstant.token}'
    };
    emit(RequestLoadingState());
    CallApi.postData(
      data: {
        "jsonrpc": "2.0",
        "params": {
          "session": AppConstant.settion_Id,
        }
      },
      baseUrl: ApiEndPoint.baseurl,
      apiUrl: ApiEndPoint.listTimeRequestUrl,
      headers: headers,
      context: context,
    ).then((value) async {
      if (value!.statusCode == 200) {
        final responseBody = json.decode(value.body);

        print(responseBody);
        if (responseBody['result']['status'] == 200) {
          print('suecccccccccc$responseBody');
          emit(TimeOffRequestSucsessState());
        } else if (responseBody['result']['status'] == 404) {
          String errormessage = responseBody['result']['message'];
          ShowMyDialog.widgetshowMsg(context, Text(errormessage));
          emit(TimeOffRequestErrorState());
        } else if (responseBody.containsKey('error')) {
          String errormessage = responseBody['error']['data']['message'];
          ShowMyDialog.widgetshowMsg(context, Text(errormessage));
          emit(TimeOffRequestErrorState());
        } else {
          ShowMyDialog.widgetshowMsg(
              context, Text('someThing error try again '));
          emit(TimeOffRequestErrorState());
        }
      }
    }).catchError((error) {
      debugPrint('An error occurred: $error');
      emit(TimeOffRequestErrorState());
    });
  }
}
