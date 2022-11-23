import 'package:flutter/material.dart';
import 'package:flutter_111122_login_screen/home_page.dart';
import 'package:flutter_111122_login_screen/login_page.dart';

abstract class RouteManagement {
  static const String initRoute = "/";
  static const String loginRoute = "/login";
  static const String homeRoute = "/home";

  static Map<String, WidgetBuilder> routes = {
    initRoute: (context) => const LoginPage(title: 'Login Page'),
    loginRoute: (context) => const LoginPage(title: 'Login Page'),
    homeRoute: (context) => const HomePage(title: 'Home Page'),
  };
}
