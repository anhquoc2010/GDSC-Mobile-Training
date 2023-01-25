import 'package:flutter/material.dart';
import 'package:flutter_111122_login_screen/modules/bottom_nav/bottom_nav.view.dart';
import '../../modules/home/views/home.view.dart';
import '../../modules/login/views/login.view.dart';
import '../../modules/notifications/views/notifications.view.dart';
import '../../modules/profile/views/profile.view.dart';

const String initRoute = "/";
const String loginRoute = "/login";
const String homeRoute = "/home";
const String bottomNavRoute = "/bottomNav";
const String notificationRoute = "/notifications";
const String profileRoute = "/profile";

final Map<String, WidgetBuilder> routes = {
  initRoute: (context) => const LoginPage(),
  loginRoute: (context) => const LoginPage(),
  bottomNavRoute: (context) => const BottomNavigation(),
  homeRoute: (context) => const HomePage(),
  notificationRoute: (context) => const Notifications(),
  profileRoute: (context) => const Profile(),
};

const List pageRoutes = [
  BottomNavigation(),
  LoginPage(),
  HomePage(),
  Notifications(),
  Profile()
];
