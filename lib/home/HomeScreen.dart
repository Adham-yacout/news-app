import 'package:flutter/material.dart';
import 'package:news/my_theme.dart';

import 'HomeDrawer.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName="home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      // body: ,
    );
  }
}
