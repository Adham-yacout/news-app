import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/Category/category.dart';

import 'Category_item.dart';

class CategoryScreen extends StatelessWidget {
var categorylist=Categoryy.getCategories();

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assetes/images/background.png'),
          fit: BoxFit.cover,
        ),
      ),
     child: Column(
       
       children: [
         Text('pick up your category of interest!',
         style: Theme.of(context).textTheme.displayMedium,),
         Expanded(
           child: GridView.builder(
               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                 crossAxisCount: 2,
                 mainAxisSpacing: 18,
                 crossAxisSpacing: 18,
               ),
               itemBuilder:(context,index){
                 return Categoryitem(category:categorylist[index] ,index:index ,);
               } ,
             itemCount: categorylist.length,
           ),
         )
       ],
     ),
    );
  }
}
