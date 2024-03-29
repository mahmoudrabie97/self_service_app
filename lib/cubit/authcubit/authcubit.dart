import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:self_service_app/cubit/authcubit/authstates.dart';
import 'package:self_service_app/models/user_model.dart';
import 'package:self_service_app/network/api.dart';
import 'package:self_service_app/network/endpoints.dart';
import 'package:self_service_app/root_bottom_nav.dart';
import 'package:self_service_app/utlities/constants.dart';
import 'package:self_service_app/utlities/extentionhelper.dart';
import 'package:self_service_app/utlities/widgets/showdialog.dart';

import 'authstates.dart';

class AuthCubit extends Cubit<AuthStates> {
  AuthCubit() : super(AuthInitialState());
  static AuthCubit get(context) => BlocProvider.of(context);
  IconData sufficxicp = Icons.visibility_off;
  bool isSecurep = true;
  bool isSecurepc = true;
  bool showAnimation = false;
  int animationDuration = 2;
  UserModel? userModel;

  void changeSecurePassword() {
    if (isSecurep) {
      sufficxicp = Icons.visibility_off;
      isSecurep = false;
    } else {
      sufficxicp = Icons.remove_red_eye_outlined;
      isSecurep = true;
    }
    emit(ChangesecurepasswordState());
  }

  void loginUser({
    required String email,
    required String password,
    required String db,
    required BuildContext context,
  }) {
    Map<String, String> headers = {
      'Content-Type': 'application/json',
    };
    emit(LoginLoadingState());
    CallApi.postData(
      data: {
        "jsonrpc": "2.0",
        "params": {"db": db, "login": email, "password": password}
      },
      baseUrl: ApiEndPoint.baseurl,
      apiUrl: ApiEndPoint.loginUrl,
      headers: headers,
      context: context,
    ).then((value) async {
      if (value!.statusCode == 200) {
        final responseBody = json.decode(value.body);

        print(responseBody);
        if (responseBody.containsKey('error')) {
          String errormessage = responseBody['error']['data']['message'];
          ShowMyDialog.widgetshowMsg(context, Text(errormessage));
          emit(LoginErrorState());
        } else {
          final sessionId = value.headers['set-cookie'];
          print('princiiiii$sessionId');
          if (sessionId != null) {
            final sessionIdValue =
                RegExp(r'session_id=([^;]+)').firstMatch(sessionId)?.group(1);
            if (sessionIdValue != null) {
              AppConstant.settion_Id = sessionIdValue;

              print('Setion Id ${AppConstant.settion_Id}');

              emit(LoginSucsessState());
            }
          }
        }
      } else {
        ShowMyDialog.showMsg(
            context, 'something error, please try later${value.statusCode}  ');
      }
    }).catchError((error) {
      debugPrint('An error occurred: $error');
      emit(LoginErrorState());
    });
  }
}
