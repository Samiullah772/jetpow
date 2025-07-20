import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:jetpow/core/constants/image_assets.dart';
import 'package:jetpow/core/constants/strings.dart';
import 'package:jetpow/ui/screens/auth/login/login_screen.dart';

class OnBoardProvider extends ChangeNotifier {
  final pageController = PageController(initialPage: 0);

   int screenCount = 0;
   bool isLastView =false;

   void increaseCount(int v) {
    screenCount=v;
    if(screenCount < 3) isLastView =false;
    if(screenCount == 3) isLastView =true;
    pageController.animateToPage(screenCount, duration: Duration(seconds: 1), curve: Curves.ease);
    notifyListeners();
  }

  void UpdatePageFromButton(){
     if(screenCount <=3 ){
       screenCount++;
       if(screenCount == 3) isLastView =true;
       pageController.animateToPage(screenCount, duration: Duration(seconds: 1), curve: Curves.ease);
       notifyListeners();
     }
  }
  

  List<OnbordInfoModel> boardList = [
    OnbordInfoModel(
      img: ImageAssets.onBoarding1,
      title: onBoardtitle1,
      body: onBoardbody1,
    ),
    OnbordInfoModel(
      img: ImageAssets.onBoarding2,
      title: onBoardtitle2,
      body: onBoardbody2,
    ),
    OnbordInfoModel(
      img: ImageAssets.onBoarding3,
      title: onBoardtitle3,
      body: onBoardbody3,
    ),
    OnbordInfoModel(
      img: ImageAssets.onBoarding4,
      title: onBoardtitle4,
      body: onBoardbody4,

    ),
  ];
}
//required img,required  title,required text,primaryTab,btntext,secondartTab,btnText2

class OnbordInfoModel {
  String img;
  String title;
  String body;

  OnbordInfoModel({
    required this.img,
    required this.title,
    required this.body,
  });
}
