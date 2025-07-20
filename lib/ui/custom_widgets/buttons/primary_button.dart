import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jetpow/core/constants/colors.dart';
import 'package:jetpow/core/constants/styles.dart';

class PrimaryButton extends StatelessWidget {
  Color color;
  String text;
  Color textColor;
  VoidCallback onTab;

  PrimaryButton({
    super.key,
    this.color = primaryColor,
    required this.text,
    this.textColor = whiteColor,
    required this.onTab,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        onTab();
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Container(
          width: 382,
          height: 59,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(51),
          ),
          child: Center(child: Text(text, style: primaryButtonTextStyle)),
        ),
      ),
    );
  }
}
