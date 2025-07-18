// ignore_for_file: unused_field

import 'package:flutter/widgets.dart';

class SizeConfigService {
  static late double _blockSizeHorizontal;
  static late double _blockSizeVertical;
  static bool isTablet = false;

  void init(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    _blockSizeHorizontal = mediaQueryData.size.width / 100;
    _blockSizeVertical = mediaQueryData.size.height / 100;
    isTablet = mediaQueryData.size.shortestSide > 600;
  }

  static double getFontSize(double fontSize) {
    if (isTablet) {
      return fontSize * 1.4; // Increase the font size by 40% for tablets
    } else {
      return fontSize;
    }
  }

  static double getImageSize(double imageSize) {
    if (isTablet) {
      return imageSize * 1.4; // Increase the image size by 40% for tablets
    } else {
      return imageSize;
    }
  }

  static double getAppbarSize(double imageSize) {
    if (isTablet) {
      return imageSize * 1.5; // Increase the image size by 50% for tablets
    } else {
      return imageSize;
    }
  }

  static double getHeightSize(double imageSize) {
    if (isTablet) {
      return imageSize * 1.4;
    } else {
      return imageSize;
    }
  }
}
