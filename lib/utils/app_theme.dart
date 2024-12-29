import 'package:flutter/material.dart';

import 'package:evently_app/utils/app_color.dart';

class AppTheme{

  static final ThemeData lightTheme = ThemeData();
  static final ThemeData darkTheme=ThemeData(
   appBarTheme: AppBarTheme(
     backgroundColor: AppColor.primaryDark
   )
  );
}