import 'package:flutter/material.dart';
import 'package:jetpow/core/constants/image_assets.dart';
import 'package:jetpow/core/constants/styles.dart';
import 'package:get/get.dart';
import 'package:jetpow/ui/screens/onboardings/onborading_screen.dart';

class SplashScreen extends StatefulWidget{

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState();
    delay();
  }

   void delay()async{
    //await Future.delayed(Duration(seconds: 4));
    //Get.to(()=>OnBoardScreen());
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
         body: Center(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               Image.asset(ImageAssets.imageSplash,width: 147,height: 147,),
               SizedBox(height: 20),
               Text('ThinkLawn',style: headingTextStyle),
               SizedBox(height: 10),
               Text('Smarter Lawn care start Here',style: splashSubHeadingTextStyle)
             ],
           ),
         ),
    );
  }
}