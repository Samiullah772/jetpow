import 'package:flutter/material.dart';
import 'package:jetpow/core/constants/colors.dart';
import 'package:jetpow/core/constants/styles.dart';

class SecondaryButton extends StatelessWidget {
  Color color;
  String text;
  Color textColor;
  VoidCallback onTab;

  SecondaryButton({
    super.key,
    this.color = primaryColor,
    required this.text,
    this.textColor = whiteColor,
    required this.onTab,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Container(
        width: 382,
        height: 59,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(51),
          border: BoxBorder.all(width: 1, color: primaryColor),
        ),
        child: Center(child: Text(text, style: secondryButtonTextStyle)),
      ),
    );
  }
}
