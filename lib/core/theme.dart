import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ThemeData themeData = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
  textTheme: TextTheme(
    headlineMedium:  TextStyle(
      color: Colors.black,
      fontSize: ScreenUtil().setSp(18),
      fontWeight: FontWeight.w400,
    ),
    headlineLarge: TextStyle(
      color: Colors.black,
      fontSize: ScreenUtil().setSp(26),
      fontWeight: FontWeight.w400,
    ),
    displayLarge: TextStyle(
       color: Colors.grey[700],
      fontSize: ScreenUtil().setSp(18),
      fontWeight: FontWeight.w400,
    ),
    displayMedium: TextStyle(
      color: Colors.white,
      fontSize: ScreenUtil().setSp(18),
      fontWeight: FontWeight.w700,
    ),
    bodyMedium: TextStyle(
      color: Colors.grey[700],
      fontSize: ScreenUtil().setSp(18),
    )
 
  ),
);
