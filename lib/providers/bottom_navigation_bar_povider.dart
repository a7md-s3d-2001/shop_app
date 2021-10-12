import 'package:flutter/material.dart';

class BottomNavigationBarProvider extends ChangeNotifier  {
  int currentIndex = 0;

  void increaseCurrentIndex (index){
    currentIndex = index;
    notifyListeners();
  }
}