import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/my_theme.dart';
import 'package:news/news/newsdetails.dart';

import 'home/HomeScreen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeScreen.routeName,
      routes: {
      HomeScreen.routeName:(context)=>HomeScreen(),
        newsdetails.routeName:(context)=>newsdetails(),
      },
      theme: MyTheme.lighttheme,
      debugShowCheckedModeBanner: false,
    );
  }
}
