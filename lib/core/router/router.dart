import 'package:accesstoken/view/auth/login_page.dart';
import 'package:accesstoken/view/auth/register_page.dart';
import 'package:accesstoken/view/screens/splash_screen.dart';
import 'package:accesstoken/view/total%20pages/home_page.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  // Singleton
  static final RouteGenerator _generator = RouteGenerator._init();

  static RouteGenerator get router => _generator;

  RouteGenerator._init();

  Route? onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return _navigate(page: const HomePage());
      case "splash":
        return _navigate(page: const SplashScreen());
      case "register":
        return _navigate(page: const RegisterPage());
      case "login":
        return _navigate(page: const LoginPage());
    }
    return null;
  }

  MaterialPageRoute _navigate({required Widget page}) {
    return MaterialPageRoute(
      builder: (context) => page,
    );
  }
}
