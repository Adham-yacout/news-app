import 'package:flutter/material.dart';
import 'package:news/api_manager.dart';
import 'package:news/model/NewResponse.dart';
import 'package:news/my_theme.dart';
import 'package:news/news/newsitem.dart';

class NewsSearch extends SearchDelegate{
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [ IconButton(onPressed: (){
      showResults(context);
    },
        icon: Icon(Icons.search)),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
   return IconButton(onPressed: (){
     Navigator.of(context).pop();
   }, icon: Icon(Icons.clear));
  }

  @override
  Widget buildResults(BuildContext context) {
    return  FutureBuilder<NewResponse>(
        future: ApiManager.getNews(keyword: query),
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

  @override
  Widget buildSuggestions(BuildContext context) {
   return Center(child:Text("suggestions") ,
       );
  }
  
}