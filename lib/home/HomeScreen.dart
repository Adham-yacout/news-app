import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:news/Category/Categorydetails.dart';
import 'package:news/Category/category.dart';
import 'package:news/Category/category_screen.dart';
import 'package:news/my_theme.dart';
import 'package:news/settings/settingstab.dart';

import 'HomeDrawer.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName="home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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

          child:
          HomeDrawer(ondraweritemclick: ondraweritemclick),

        ),
        body:selecteditemdrawer==HomeDrawer.settings? settingstab():
        selectedcat==null?
        CategoryScreen(oncategoryitemclick: oncategoryitemclick,)
            :
        CategoryDetails(category: selectedcat!),
      ),
    );
  }

  Categoryy ? selectedcat=null;
var selecteditemdrawer=HomeDrawer.categories;
  void oncategoryitemclick(Categoryy category)
  {
    selectedcat=category;
    setState(() {

    });
  }
  void ondraweritemclick(int selected){
selecteditemdrawer=selected;
Navigator.pop(context);
selectedcat=null;
setState(() {

});
  }
}
