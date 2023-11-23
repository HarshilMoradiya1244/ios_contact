import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ios_contact/Screen/contact_info/view/contact_info_screen_android.dart';
import 'package:ios_contact/Screen/home/view/home_screen_android.dart';
import 'package:ios_contact/utils/app_routes.dart';
import 'Screen/contact_info/view/contact_info_screen.dart';
import 'Screen/home/view/home_screen.dart';

void main() {
  runApp(
   Platform.isAndroid ? MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: screen_routes_android
    ):
    CupertinoApp(
      debugShowCheckedModeBanner: false,
      routes:screen_routes_ios
     )
  );
}
