import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:news/Category/category.dart';
import 'package:news/api_manager.dart';
import 'package:news/model/SourcesResponse.dart';
import 'package:news/my_theme.dart';
import 'package:news/widgets/Tabcontainer.dart';

class CategoryDetails extends StatelessWidget {
  Categoryy category;
  CategoryDetails({required this.category});
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<SourcesResponse>(
        future: ApiManager.getSources(category.id),
        builder: (context, snapshot) {
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
          var sourceslist = snapshot.data?.sources ?? [];
          return TabContainer(sourceslist: sourceslist);
        });
  }
}
