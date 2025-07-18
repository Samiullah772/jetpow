import 'package:flutter_screenutil/flutter_screenutil.dart' as screen_utils;

setHeight(int height) {
  return screen_utils.ScreenUtil().setHeight(height);
}

setWidth(int widget) {
  return screen_utils.ScreenUtil().setWidth(widget);
}

setFontSize(int sp) {
  return screen_utils.ScreenUtil().setSp(sp);
}
