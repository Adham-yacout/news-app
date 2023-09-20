import 'dart:ui';

import 'package:flutter/material.dart';

class MyTheme{
static Color primarylightcolor=Color(0xff39A552);
static Color whitecolor=Color(0xffffffff);
static Color black=Color(0xff303030);
static Color darkblue=Color(0xff003E90);
static Color pinkcolor=Color(0xffED1E79);
static Color browncolor=Color(0xffCF7E48);
static Color bluecolor=Color(0xff4882CF);
static Color yellowcolor=Color(0xffF2D352);
static Color redcolor=Color(0xffC91C22);


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