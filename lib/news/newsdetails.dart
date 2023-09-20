import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/model/NewResponse.dart';
import 'package:url_launcher/url_launcher.dart';

class newsdetails extends StatelessWidget {
static const String routeName='newsdetails';

  @override
  Widget build(BuildContext context) {
    var news=ModalRoute.of(context)!.settings.arguments as News;
    return Scaffold(
appBar: AppBar(title:Text(news.title!),),
      body:  Container(
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
            Text(news.author?? ''),
            SizedBox(height: 10,),
            Text(news.title ?? ''),
            SizedBox(height: 10,),
            Text(news.publishedAt ?? '',textAlign: TextAlign.end,),
            SizedBox(height: 20,),
            Text(news.description??'',style: TextStyle(
              fontSize: 20,
              wordSpacing: 2
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton.icon(onPressed: (){
                  openurl(news.url);
                },
                    icon: Icon(Icons.arrow_forward), label: Text("view full article"))
              ],
            ),
          ],
        ),
      ),
    );
  }

  void openurl(String? url) async{
   if(url==null){
     return;
   }
var uri=Uri.parse(url);
 if(await canLaunchUrl(uri))
   {
   await  launchUrl(uri);
   }

  }
}
