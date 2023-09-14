import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/my_theme.dart';

class HomeDrawer extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(

        children: [
          Container(

            width: double.infinity,
            color: MyTheme.primarylightcolor,
            padding: EdgeInsets.symmetric(vertical: 64),
            child: Expanded(
              child: Center(
                child: Text('News App!',
                style: Theme.of(context).textTheme.displayLarge,
                textAlign: TextAlign.center,
                ),
              ),
            ),
            

          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: InkWell(
              onTap: (){

              },
              child: Row(children: [
                Icon(Icons.list),
                SizedBox(width: 10,),
                Text('Categories',
                style: Theme.of(context).textTheme.displayMedium,),
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: InkWell(
              onTap: (){},
              child: Row(children: [
                Icon(Icons.settings),
                SizedBox(width: 10,),
                Text('Settings',
                  style: Theme.of(context).textTheme.displayMedium,),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
