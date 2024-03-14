import 'package:flutter/material.dart';
import 'package:self_service_app/pages/profile_page/widgets/profile_body.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ProfileBody(),
    );
  }
}
