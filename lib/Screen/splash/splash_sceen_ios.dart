import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreenIos extends StatefulWidget {
  const SplashScreenIos({super.key});

  @override
  State<SplashScreenIos> createState() => _SplashScreenIosState();
}

class _SplashScreenIosState extends State<SplashScreenIos> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, 'dash');
    });
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Image.asset(
            "assets/images/contact_ios.png",
            height: 100,
          ),
        ),
      ),
    );
  }
}