import 'package:flutter/material.dart';
import '../../modules/home/views/home.view.dart';
import '../../modules/login/views/login.view.dart';

abstract class RouteManager {
  static const String initRoute = "/";
  static const String loginRoute = "/login";
  static const String homeRoute = "/home";

  static Map<String, WidgetBuilder> routes = {
    initRoute: (context) => const LoginPage(title: 'Login Page'),
    loginRoute: (context) => const LoginPage(title: 'Login Page'),
    homeRoute: (context) => const HomePage(title: 'Home Page'),
  };
}
