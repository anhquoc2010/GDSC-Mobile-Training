import 'package:flutter/material.dart';
import 'core/router/route_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: RouteManager.initRoute,
      routes: RouteManager.routes,
      theme: ThemeData(),
    );
  }
}
