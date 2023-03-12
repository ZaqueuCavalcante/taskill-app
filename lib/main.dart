import 'package:flutter/material.dart';
import 'package:taskill_app/providers.dart';
import 'package:taskill_app/routes.dart';

void main() {
  setupProviders();
  runApp(const Taskill());
}

class Taskill extends StatelessWidget {
  const Taskill({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Taskill',
      theme: ThemeData.dark(),
      routerDelegate: routes.routerDelegate,
      routeInformationParser: routes.routeInformationParser,
      routeInformationProvider: routes.routeInformationProvider,
    );
  }
}
