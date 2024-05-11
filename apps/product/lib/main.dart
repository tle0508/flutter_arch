import 'package:core_libs/dependency_injection/get_it.dart';
import 'package:flutter/material.dart';
import 'package:product/features/home/domain/port/product/service.dart';
import 'package:product/infrastructure/dependency_injection/inject.dart';
import 'package:product/infrastructure/router/router.dart';

void main() {
  runApp(const MyApp());
  registerCoreServices();
  registerProductServices();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}

