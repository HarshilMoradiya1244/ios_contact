import 'package:flutter/material.dart';

class SplashScreenAndroid extends StatefulWidget {
  const SplashScreenAndroid({super.key});

  @override
  State<SplashScreenAndroid> createState() => _SplashScreenAndroidState();
}

class _SplashScreenAndroidState extends State<SplashScreenAndroid> {
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
            "assets/images/contact_android.png",
            height: 100,
          ),
        ),
      ),
    );
  }
}