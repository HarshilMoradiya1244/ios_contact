import 'package:flutter/cupertino.dart';

class ContactInfoProvider with ChangeNotifier {

  DateTime? date = DateTime.now();

  void changeDate(DateTime? d1){
    date = d1;
    notifyListeners();
  }

}