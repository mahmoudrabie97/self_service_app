import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:self_service_app/cubit/request_cubit/requests_states.dart';
import 'package:self_service_app/models/request_time_model.dart';

import '../../network/api.dart';
import '../../network/endpoints.dart';
import '../../utlities/constants.dart';
import '../../utlities/widgets/showdialog.dart';

class RequestCubit extends Cubit<RequestStates> {
  RequestCubit() : super(RequestInitialState());
  static RequestCubit get(context) => BlocProvider.of(context);
  TimeRequestModel? timerequestModel;

  void getlistTimeOffRequest({
    required BuildContext context,
  }) {
    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Cookie': 'session_id=${AppConstant.settion_Id}'
    };
    emit(RequestLoadingState());
    print('Setion Id ${AppConstant.settion_Id}');
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
      print("this ${value!.body}");
      if (value.statusCode == 200) {
        final responseBody = json.decode(value.body);
        timerequestModel = TimeRequestModel.fromJson(responseBody);
        print(' timeeeeeeeeeeeeeeee ${timerequestModel!.result!.status}');

        // userModel = UserModel.fromJson(responseBody);

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
