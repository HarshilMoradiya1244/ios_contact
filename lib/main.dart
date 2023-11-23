import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ios_contact/Screen/contact_info/view/contact_info_screen_android.dart';
import 'package:ios_contact/Screen/home/view/home_screen_android.dart';
import 'Screen/contact_info/view/contact_info_screen.dart';
import 'Screen/home/view/home_screen.dart';

void main() {
  runApp(
   Platform.isAndroid ? MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => const HomeScreenAndroid(),
        'info':(context) => const ContactInfoScreenAndroid(),
      },
    ):
    CupertinoApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(p0) =>const HomeScreen(),
        'info':(p0) => const ContactInfoscreen(),
      },
     )
  );
}
