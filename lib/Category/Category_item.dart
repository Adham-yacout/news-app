import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:news/Category/category.dart';

class Categoryitem extends StatelessWidget {
  Categoryy category;
int index;
Categoryitem({required this.category,required this.index});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
decoration: BoxDecoration(
  color: category.color,
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(18),
    topRight: Radius.circular(18),
    bottomLeft: Radius.circular((index %2==0)?18:0),
    bottomRight: Radius.circular((index %2==0)?0:18)
  )
),
      child: Column(
        children: [
          Image.asset(category.imagepath,height: 120),

        ],
      ),
    );
  }
}
