import 'dart:ui';

import 'package:flutter/material.dart';

class MyTheme{
static Color primarylightcolor=Color(0xff39A552);
static Color whitecolor=Color(0xffffffff);
static Color black=Color(0xff303030);

static ThemeData lighttheme=ThemeData(
  primaryColor: primarylightcolor,
  appBarTheme: AppBarTheme(
    elevation: 0,
    backgroundColor: primarylightcolor,


    ),
    textTheme: TextTheme(
      displayLarge: TextStyle(
        color: whitecolor,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
      displayMedium: TextStyle(
        color: black,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
  )
);
}