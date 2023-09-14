import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      },
    );
  }
}