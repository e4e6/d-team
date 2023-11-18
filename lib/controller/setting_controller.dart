import 'package:flutter/material.dart';

class SettingController with ChangeNotifier{
  bool isDarkMode = false;

  void changeIsDarkMode(){
    isDarkMode? false : true;
    notifyListeners();
  }
}
