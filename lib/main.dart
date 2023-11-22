import 'package:flutter/cupertino.dart';
import 'package:ios_contact/Screen/contact_info/view/contact_info_screen.dart';
import 'package:ios_contact/Screen/home/view/home_screen.dart';

void main() {
  runApp(
    CupertinoApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(p0) =>HomeScreen(),
        'info':(p0) => ContactInfoscreen(),
      },
    )
  );
}
