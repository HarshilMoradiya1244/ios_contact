import 'dart:ffi';

import 'package:flutter/material.dart';

class HomeProvider with ChangeNotifier {
  DateTime? date = DateTime.now();
  DateTime? time = DateTime.now();

  void changeDate(DateTime? d1) {
    date = d1;
    notifyListeners();
  }

  void changeTime(DateTime? d2) {
    time = d2;
    notifyListeners();
  }
}
