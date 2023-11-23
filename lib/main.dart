import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ios_contact/utils/app_routes.dart';

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
