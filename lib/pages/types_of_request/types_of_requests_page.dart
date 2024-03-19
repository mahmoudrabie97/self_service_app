import 'package:flutter/material.dart';
import 'package:self_service_app/pages/types_of_request/widgets/types_of_requests_body.dart';

class TypesOfRequestsPage extends StatelessWidget {
  const TypesOfRequestsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomTypesOfRequestBody(),
    );
  }
}
