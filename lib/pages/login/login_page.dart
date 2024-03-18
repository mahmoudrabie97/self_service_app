import 'package:flutter/material.dart';
import 'package:self_service_app/pages/login/widgets/custom_login_body.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({super.key, required this.db});
  final String db;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: CustomLogInBody(
        db: db,
      ),
    );
  }
}
