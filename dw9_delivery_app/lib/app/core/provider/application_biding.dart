import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../rest_client/custom_dio.dart';

class ApplicationBiding extends StatelessWidget {
  final Widget child;

  const ApplicationBiding({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (context)=> CustomDio()),
      ],
      child: child,
    );
  }
}
