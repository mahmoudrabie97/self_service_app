import 'package:flutter/material.dart';
import 'package:self_service_app/pages/login/widgets/custom_login_body.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: CustomLogInBody(),
    );
  }
}
