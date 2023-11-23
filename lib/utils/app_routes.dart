import 'package:flutter/cupertino.dart';
import '../Screen/contact_info/view/contact_info_screen.dart';
import '../Screen/contact_info/view/contact_info_screen_android.dart';
import '../Screen/home/view/home_screen.dart';
import '../Screen/home/view/home_screen_android.dart';

Map<String , WidgetBuilder > screen_routes_android = {
  '/':(context) => const HomeScreenAndroid(),
  'info':(context) => const ContactInfoScreenAndroid(),
};
Map<String , WidgetBuilder > screen_routes_ios = {
  '/':(p0) =>const HomeScreen(),
  'info':(p0) => const ContactInfoscreen(),
};