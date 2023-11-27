import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ios_contact/Screen/contact_info/view/contact_info_screen.dart';
import 'package:ios_contact/Screen/dash/view/dash_android_screen.dart';
import 'package:ios_contact/Screen/dash/view/dash_ios_screen.dart';
import 'package:ios_contact/Screen/home/view/home_screen.dart';
import 'package:ios_contact/Screen/splash/splash_sceen_ios.dart';
import 'package:ios_contact/Screen/splash/splash_screen_android.dart';


Map<String , WidgetBuilder > screen_routes_android = {
  '/':(context) => const SplashScreenAndroid(),
  'dash':(context) => const DashAndroidScreen(),
};
Map<String , WidgetBuilder > screen_routes_ios = {
  '/':(context) => const SplashScreenIos(),
  'dash':(context) => const DashIosScreen(),
  'home':(context) => HomeScreen(),
  'info':(context) => ContactInfoscreen()
};