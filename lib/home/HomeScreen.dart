import 'package:flutter/material.dart';
import 'package:news/Category/Categorydetails.dart';
import 'package:news/Category/category_screen.dart';
import 'package:news/my_theme.dart';

import 'HomeDrawer.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName="home";

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: MyTheme.whitecolor,
        image: DecorationImage(
          image: AssetImage('assetes/images/background.png'),
              fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: MyTheme.primarylightcolor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight:Radius.circular(25) ,

          )
        ),
          title: Text("News App",
            style: Theme.of(context).textTheme.displayLarge,
         ),
          centerTitle: true,
        ),
        drawer: Drawer(
          child: HomeDrawer(),

        ),
        body:CategoryDetails() ,
      ),
    );
  }
}
