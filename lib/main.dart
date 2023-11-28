import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ios_contact/Screen/dash/provider/dash_provider.dart';
import 'package:ios_contact/Screen/home/provider/home_screen_provder.dart';
import 'package:ios_contact/utils/app_routes.dart';
import 'package:provider/provider.dart';
import 'Screen/contact_info/provider/contac_info_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ContactInfoProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => DashProvider(),
        ),
      ],
      child:  Platform.isIOS? MaterialApp(
        theme: ThemeData(useMaterial3: true),
          debugShowCheckedModeBanner: false,
          routes: screen_routes_android
      ):
      CupertinoApp(
          debugShowCheckedModeBanner: false,
          routes:screen_routes_ios
      ),
    ),
  );
}
