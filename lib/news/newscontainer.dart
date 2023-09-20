import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/api_manager.dart';

import 'package:news/model/NewResponse.dart';
import 'package:news/model/SourcesResponse.dart';
import 'package:news/my_theme.dart';
import 'package:news/news/newsitem.dart';

class NewsContainer extends StatelessWidget {
  Source source;
  NewsContainer({required this.source});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<NewResponse>(
      future: ApiManager.getNews(source.id ?? ''),
        builder: (context,snapshot){
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator(
              color: MyTheme.primarylightcolor,));
          } else if (snapshot.hasError) {
            return Column(
              children: [
                Text('Something went wrong'),
                ElevatedButton(onPressed: () {}, child: Text('Try again'))
              ],
            );
          }
          if (snapshot.data?.status != 'ok') {
            //server message error
            return Column(
              children: [
                Text(snapshot.data?.message ?? ''),
                ElevatedButton(onPressed: () {}, child: Text('Try again'))
              ],
            );
          }
          var newslist=snapshot.data?.articles ?? [];
          return ListView.builder(itemBuilder: (context,index)
          {
            return NewsItem(news: newslist[index]);
          },
          itemCount: newslist.length,
          );


      });

  }
}
