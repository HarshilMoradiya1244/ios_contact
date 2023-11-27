import 'package:flutter/cupertino.dart';
import 'package:ios_contact/Screen/dash/view/dash_android_screen.dart';
import 'package:ios_contact/Screen/dash/view/dash_ios_screen.dart';


Map<String , WidgetBuilder > screen_routes_android = {
  '/':(context) => const DashAndroidScreen(),
};
Map<String , WidgetBuilder > screen_routes_ios = {
  '/':(context) => const DashIosScreen(),
};