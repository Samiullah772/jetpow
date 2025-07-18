

import 'package:flutter/material.dart';

class OnBoardProvider extends ChangeNotifier{

  int screenCount = 0;


  void increaseCount(){
    screenCount++;
    notifyListeners();
  }


}