import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:jetpow/core/constants/colors.dart';
import 'package:jetpow/ui/custom_widgets/buttons/primary_button.dart';
import 'package:jetpow/ui/custom_widgets/buttons/secondry_button.dart';
import 'package:jetpow/ui/screens/auth/login/login_screen.dart';
import 'package:jetpow/ui/screens/onboardings/onboarding_provider.dart';
import 'package:provider/provider.dart';
import 'package:dots_indicator/dots_indicator.dart';

import '../../../core/constants/styles.dart';

class OnBoardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>OnBoardProvider(),
      child: Scaffold(
        body: Consumer<OnBoardProvider>(
          builder: (context, value, child) {
            return Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 59.0,right: 16.0),
                      child: Text('Skip',style: mediumTextStyle.copyWith(color: Colors.grey),),
                    ),
                  ),
               SizedBox(height: 10),
                  SizedBox(
                    width: 400,
                    height: 550,
                    child: PageView.builder(
                      controller: value.pageController,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return _onBoardView(value.boardList[index],value.screenCount);
                      },
                      onPageChanged: (v){
                        if(value.screenCount < 4 ) {
                          value.increaseCount(v);
                        }
                        },
                    ),
                  ),
                  !value.isLastView ? DotsIndicator(
                      position: double.parse(value.screenCount.toString()),
                      dotsCount: 4,
                     decorator: DotsDecorator(
                       color: greyColor,
                       activeColor: primaryColor,
                       size: Size(6.0, 6.0),
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(10),
                       ),
                       activeSize: Size(35.0, 6.0),
                       activeShape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(10),
                       ),
                     ),
                  ):SizedBox(),
                  !value.isLastView ? PrimaryButton(text: 'Next', onTab: (){
                    value.UpdatePageFromButton();
                  }) : PrimaryButton(text: 'Login', onTab: (){
                    Get.to(()=>LoginScreen());
                  }),
                  SizedBox(height: 5),
                  value.isLastView ? SecondaryButton(text: 'Continue as Guest', onTab: (){}) :SizedBox()
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  _onBoardView(OnbordInfoModel model,int indicatorPosition) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(model.img, width: 430, height: 336),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 54.0),
          child: SizedBox(
            width: 323,
            height: 168,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(model.title, style: splashHeadingTextStyle,textAlign: TextAlign.center,),
                SizedBox(height: 4),
                Text(model.body, style: bodyTextStyle,textAlign: TextAlign.center,overflow: TextOverflow.fade,),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
