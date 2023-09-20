 import 'package:flutter/material.dart';
import 'package:news/model/SourcesResponse.dart';
import 'package:news/widgets/Tab_icon.dart';
import 'package:news/widgets/newscontainer.dart';

class TabContainer extends StatefulWidget {
  List<Source> sourceslist;

TabContainer({required this.sourceslist});

  @override
  State<TabContainer> createState() => _TabContainerState();
}

class _TabContainerState extends State<TabContainer> {
  int selectedindx=0;

   @override
   Widget build(BuildContext context) {
     return DefaultTabController(
         length: widget.sourceslist.length,
         child: Column(
           children: [
             TabBar(
               onTap: (index){
                 selectedindx=index;
                 setState(() {

                 });
               },
               indicatorColor: Colors.transparent,
               isScrollable: true,
               tabs: widget.sourceslist.map((source) =>
                   TabIcon(
                       source: source,
                       isSelected:selectedindx==widget.sourceslist.indexOf(source) )
               ).toList(),
             ),
             Expanded(child: NewsContainer(source: widget.sourceslist[selectedindx],))
           ],
         ));
   }
}
