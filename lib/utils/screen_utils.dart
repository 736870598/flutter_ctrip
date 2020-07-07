

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyScreenUtils{

  static int _designWidth = 750;

  static void initScreenUtils(BuildContext context, {num designWidth}){
    if(designWidth != null){
      _designWidth = designWidth;
    }
    ScreenUtil.init(context, width: _designWidth);
  }

  static num getSize(num size){
    return ScreenUtil().setWidth(size);
  }

  static num getSp(num sp){
    return ScreenUtil().setSp(sp);
  }
}
