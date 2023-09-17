import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Category_item.dart';

class CategoryScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assetes/images/background.png'),
          fit: BoxFit.fill,
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
                 crossAxisSpacing: 18
               ),
               itemBuilder:(context,index){
                 return Categoryitem();
               } ,
             itemCount: 8,
           ),
         )
       ],
     ),
    );
  }
}
