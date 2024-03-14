import 'package:flutter/material.dart';
import 'package:self_service_app/pages/request_page/widgets/custom_requests_body.dart';

class RequestPage extends StatelessWidget {
  const RequestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomRequestsBody(),
    );
  }
}
