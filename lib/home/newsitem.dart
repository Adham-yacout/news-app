import 'package:flutter/cupertino.dart';
import 'package:news/model/NewResponse.dart';

class NewsItem extends StatelessWidget {
News news;
NewsItem({required this.news});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.symmetric(vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: [
          Container(

      clipBehavior: Clip.antiAlias,//rounded image
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),

              ),
              child:Image.network(news.urlToImage ?? ''),
            ),
         SizedBox(height: 10,),
         Text(news.title?? ''),
          SizedBox(height: 10,),
          Text(news.content ?? ''),
          Text(news.publishedAt ?? '',textAlign: TextAlign.end,),
        ],
      ),
    );
  }
}
