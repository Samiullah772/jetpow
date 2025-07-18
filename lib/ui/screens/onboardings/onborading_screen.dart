import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/styles.dart';

class OnBoardScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Align(
            alignment: Alignment.topRight,
            child: Text('Skip',style: splashSubHeadingTextStyle),
          ),

          // PageView.builder(
          //     controller: ,
          //     itemBuilder: ,
          // )



        ],
        ),
      )
    );
  }
}