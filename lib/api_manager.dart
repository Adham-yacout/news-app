import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news/model/NewResponse.dart';
import 'package:news/model/SourcesResponse.dart';
class ApiManager {
  static const baseurl = 'newsapi.org';

  static Future<SourcesResponse> getSources() async {
    var url = Uri.https(baseurl, '/v2/top-headlines/sources',
        {'apiKey': '28939bc62cc84485b3844867d85474ea'});
try{
  var response=  await http.get(url);
  var bodyString=response.body;
  var bodyjson=jsonDecode(bodyString); //json
  var sourcesresponse=SourcesResponse.fromJson(bodyjson); //object
  return sourcesresponse;
}catch(e)
    {
      throw e;
    }

  }

 static Future<NewResponse> getNews(String sourceid) async{
var url=Uri.https(baseurl,'/v2/everything',
{
  'apiKey': '28939bc62cc84485b3844867d85474ea',
  'sources':sourceid,
});
try{
  var response=await http.get(url);
  var  bodystring=response.body;
  var bodyjson=jsonDecode(bodystring);
  var newsresponse=NewResponse.fromJson(bodyjson);
  return newsresponse;
}
catch(e)
    {
      throw e;
    }


  }

}
