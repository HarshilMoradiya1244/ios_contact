import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ios_contact/Screen/contact_info/view/contact_info_screen.dart';
import 'package:ios_contact/Screen/contact_info/view/contact_info_screen_android.dart';
import 'package:ios_contact/Screen/home/view/home_screen.dart';
import 'package:ios_contact/Screen/home/view/home_screen_android.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => HomeScreenAndroid(),
        'info':(context) => ContactInfoScreenAndroid(),
      },
    )
    // CupertinoApp(
    //   debugShowCheckedModeBanner: false,
    //   routes: {
    //     // '/':(p0) =>HomeScreen(),
    //     // 'info':(p0) => ContactInfoscreen(),
    //     '
    //   },
    // )
  );
}
