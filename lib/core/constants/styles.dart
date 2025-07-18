import 'package:jetpow/core/constants/colors.dart';
import 'package:jetpow/core/constants/strings.dart';
import 'package:jetpow/core/services/size_config_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
//import 'package:pinput/pinput.dart';

final splashHeadingTextStyle = TextStyle(
  fontSize: SizeConfigService.getFontSize(30.sp),
  fontWeight: FontWeight.w500,
  color: Color(0xff153625),
  fontFamily: oswald,
);

final splashSubHeadingTextStyle = TextStyle(
  fontSize: SizeConfigService.getFontSize(14.sp),
  fontWeight: FontWeight.w500,
  color: Color(0xff00AC54),
  fontFamily: outfit,
);


final headingTextStyle = TextStyle(
  fontSize: SizeConfigService.getFontSize(20.sp),
  fontWeight: FontWeight.w500,
  fontFamily: oswald,
);



final onBoardingTextStyle = TextStyle(
  color: blackColor,
  fontSize: 24.sp,
  fontFamily: oswald,
  fontWeight: FontWeight.w900,
);

final onBoardingTitleStyle = TextStyle(
  color: blackColor,
  fontSize: 15.sp,
  fontFamily: oswald,
  fontWeight: FontWeight.w500,
  letterSpacing: 0.20,
);

final subHeadingTextStyle = TextStyle(
  fontSize: SizeConfigService.getFontSize(18.sp),
  fontWeight: FontWeight.w600,
  fontFamily: oswald,
);
final subHeadingTextStyleBold = TextStyle(
  fontSize: SizeConfigService.getFontSize(18.sp),
  fontWeight: FontWeight.bold,
  fontFamily: oswald,
);

final mediumTextStyle = TextStyle(
  fontSize: SizeConfigService.getFontSize(17.sp),
  fontWeight: FontWeight.w500,
  fontFamily: oswald,
);

final bodyTextStyle = TextStyle(
  fontSize: SizeConfigService.getFontSize(15.sp),
  fontWeight: FontWeight.w400,
  fontFamily: oswald,
);
final bodyTextStyleBold = TextStyle(
  fontSize: SizeConfigService.getFontSize(15.sp),
  fontWeight: FontWeight.bold,
  fontFamily: oswald,
);

final subBodyTextStyle = TextStyle(
  fontSize: SizeConfigService.getFontSize(13.sp),
  fontWeight: FontWeight.w300,
  fontFamily: oswald,
);
final miniTextStyle = TextStyle(
  fontSize: SizeConfigService.getFontSize(10.sp),
  fontWeight: FontWeight.w400,
  fontFamily: oswald,
);

InputDecoration authTextFieldDecoration = InputDecoration(
  fillColor: greyColor2,
  filled: true,
  prefixIconConstraints: BoxConstraints(maxHeight: 14, maxWidth: 15),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: BorderSide(color: greyColor),
  ),
  errorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: BorderSide(color: redColor),
  ),
  isDense: true,
  errorStyle: TextStyle(fontSize: 10.sp, color: redColor),
);

// final defaultPinTheme = PinTheme(
//   width: 70,
//   height: 70,
//
//   textStyle: const TextStyle(
//     fontSize: 20,
//     color: blackColor,
//     fontWeight: FontWeight.w600,
//   ),
//   decoration: BoxDecoration(
//     border: Border.all(color: greyColor.withValues(alpha: 0.5)),
//     color: greyColor2,
//     borderRadius: BorderRadius.circular(15.r),
//   ),
// );

// final focusedPinTheme = defaultPinTheme.copyDecorationWith(
//   border: Border.all(color: primaryColor),
//   borderRadius: BorderRadius.circular(15.r),
// );
//
// final submittedPinTheme = defaultPinTheme.copyWith(
//   decoration: focusedPinTheme.decoration,
// );
