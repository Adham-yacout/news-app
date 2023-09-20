

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/api_manager.dart';

import 'package:news/model/NewResponse.dart';
import 'package:news/model/SourcesResponse.dart';
import 'package:news/my_theme.dart';
import 'package:news/news/newsitem.dart';

class NewsContainer extends StatefulWidget {
  Source source;
  NewsContainer({required this.source});

  @override
  State<NewsContainer> createState() => _NewsContainerState();
}

class _NewsContainerState extends State<NewsContainer> {
  List<News> newslist=[];
  final scrollcontroller=ScrollController();
  bool shouldloadnextpage=false;
  int pagenumber=1;
  @override
  void initState(){
    super.initState();
    scrollcontroller.addListener(() {
      if(scrollcontroller.position.atEdge)
      {
        bool isTop =scrollcontroller.position.pixels ==0;
        if(!isTop)
        {
         shouldloadnextpage=true;
         setState(() {
         });
        }

      }
    });
  }
  @override
  Widget build(BuildContext context) {
if(shouldloadnextpage){
   ApiManager.getNews(sourceid:widget.source.id ?? '',page:++pagenumber).
   then((value)  {
     newslist.addAll(value.articles ?? []);
     shouldloadnextpage=false;
     setState(() {

     });
   });
}

    return FutureBuilder<NewResponse>(
      future: ApiManager.getNews(sourceid:widget.source.id ?? ''),
        builder: (context,snapshot){
          if (snapshot.hasError) {
            return Column(
              children: [
                Text('Something went wrong'),
                ElevatedButton(onPressed: () {}, child: Text('Try again'))
              ],
            );
          }
         else if (snapshot.data?.status == 'error') {
            //server message error
            return Column(
              children: [
                Text(snapshot.data?.message ?? ''),
                ElevatedButton(onPressed: () {}, child: Text('Try again'))
              ],
            );
          }
          else if(snapshot.hasData){
            if(newslist.isEmpty)
              {
                newslist.addAll(snapshot.data?.articles ?? []);
              }
           else if(snapshot.data?.articles?[0].title!=newslist[0].title){
             scrollcontroller.jumpTo(0);
              newslist=snapshot.data?.articles ?? [];
            }

            return ListView.builder(
              controller: scrollcontroller,
              itemBuilder: (context,index)
              {
                return NewsItem(news: newslist[index]);
              },
              itemCount: newslist.length,
            );
          }

          else  {
            return Center(child: CircularProgressIndicator(
              color: MyTheme.primarylightcolor,));
          }



      });

  }
}
