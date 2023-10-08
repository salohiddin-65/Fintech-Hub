import 'package:fintechreal/view/bottom-navigation-bar/bottom_navigation_bar_page.dart';
import 'package:fintechreal/view/pages/home/home_page.dart';
import 'package:fintechreal/view/register/logIn/log_in_page.dart';
import 'package:fintechreal/view/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  // Singleton /
  static final RouteGenerator _generator = RouteGenerator._init();

  static RouteGenerator get router => _generator;

  RouteGenerator._init();

  // routes generated
  Route generate(RouteSettings settings) {
    switch (settings.name) {
      case 'splash':
        return _navigate(const SplashScreen());
      case 'login':
        return _navigate(const LogInPage());
      case '/':
        return _navigate(const HomePage());
      case 'currentScreen':
        return _navigate(const BottomNavigationBarPage());
      default:
        // default home page
        return _navigate(const HomePage());
    }
  }

  // navigator
  MaterialPageRoute<dynamic> _navigate(Widget page) => MaterialPageRoute(
        builder: (context) => page,
      );
}
