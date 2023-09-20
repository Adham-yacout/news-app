import 'dart:ui';

import 'package:news/my_theme.dart';

class Categoryy{
  String id;
  String title;
  String imagepath;
  Color color;

  Categoryy({required this.id,required this.title,
  required this.color, required this.imagepath});

static List<Categoryy> getCategories(){
  return [
    Categoryy(id: 'business', title: 'business', color:MyTheme.browncolor ,
        imagepath: 'assets/images/business.png'),
    Categoryy(id: 'entertainment', title: 'entertainment', color:MyTheme.bluecolor ,
        imagepath: 'assets/images/enviroment.png'),
    Categoryy(id: 'general', title: 'general', color:MyTheme.darkblue ,
        imagepath: 'assets/images/politics.png'),
    Categoryy(id: 'health', title: 'health', color:MyTheme.pinkcolor ,
        imagepath: 'assets/images/health.png'),
    Categoryy(id: 'science', title: 'science', color:MyTheme.yellowcolor ,
        imagepath: 'assets/images/science.png'),
    Categoryy(id: 'sports', title: 'sports', color:MyTheme.redcolor ,
        imagepath: 'assets/images/sports.png'),
    Categoryy(id: 'technology', title: 'technology', color:MyTheme.yellowcolor ,
        imagepath: 'assets/images/science.png'),


  ];
}
}