import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/model/SourcesResponse.dart';
import 'package:news/my_theme.dart';

class TabIcon extends StatelessWidget {
  Source source;
  bool isSelected;
  TabIcon({required this.source, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 24),
      margin: EdgeInsets.only(top: 18),
      decoration: BoxDecoration(
        color:
            isSelected == true ? MyTheme.primarylightcolor : Colors.transparent,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: MyTheme.primarylightcolor),
      ),
      child: Text(
        source.name ?? '',
        style: TextStyle(
            fontSize: 18,
            color: isSelected == true
                ? MyTheme.whitecolor
                : MyTheme.primarylightcolor),
      ),
    );
  }
}
