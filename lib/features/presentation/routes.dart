import 'package:flutter/material.dart';
import 'package:flutter_appwrite/features/presentation/pages/login.dart';
import 'package:flutter_appwrite/features/presentation/pages/profile.dart';
import 'package:flutter_appwrite/features/presentation/pages/signup.dart';

import '../general/presentation/pages/home.dart';

class Approutes{
  static const String login = "login";
  static const String signup = "signup";
  static const String profile = "profile";
  static const String home  = "home";

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      settings: settings,
      builder: (context) {
        switch(settings.name) {
          case profile:
              return ProfilePage();
          case home:
              return HomePage();
          case signup:
              return SignupPage();
          case login:
          default:
              return LoginPage();
        }
      }
    );
  }
}
