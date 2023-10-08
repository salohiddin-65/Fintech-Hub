// ignore_for_file: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart' show SvgPicture;
import 'package:get_storage/get_storage.dart' show GetStorage;

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    GetStorage db = GetStorage();
    Future.delayed(const Duration(seconds: 3)).then((value) {
      if (db.read("access_token") != null) {
        Navigator.pushNamedAndRemoveUntil(
            context, "currentScreen", (route) => false);
      } else {
        Navigator.pushNamedAndRemoveUntil(context, "login", (route) => false);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SvgPicture.asset(
          'assets/splash_fintech_logo.svg',
          width: 260,
        ),
      ),
    );
  }
}
