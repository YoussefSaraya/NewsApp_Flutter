import 'package:flutter/material.dart';
import 'package:newsapp/API/api_manager.dart';
import 'package:newsapp/Home/news/news_item.dart';
import 'package:newsapp/Model/NewsResponse.dart';
import 'package:newsapp/Model/SourceResponse.dart';
import 'package:newsapp/app_colors.dart';

class NewsWidget extends StatelessWidget {
  final Sources source;

  NewsWidget({required this.source});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<NewsResponse?>(
      future: ApiManager.getNewsBySourceId(source.id??""), // Corrected to use source.id directly
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(
              color: AppColors.primaryLightColor,
            ),
          );
        } else if (snapshot.hasError) {
          return Column(
            children: [
              Text("Something went wrong"),
              ElevatedButton(
                onPressed: () {
                  // Should trigger a state change in a StatefulWidget
                },
                child: Text('Try again!'),
              ),
            ],
          );
        } else if (!snapshot.hasData || snapshot.data!.status != 'ok') {
          return Column(
            children: [
              Text(snapshot.data?.message ?? "Unknown error"),
              ElevatedButton(
                onPressed: () {
                  // Should trigger a state change in a StatefulWidget
                },
                child: Text('Try again!'),
              ),
            ],
          );
        } else {
          var newsList = snapshot.data!.articles!;
          return ListView.builder(
            itemBuilder: (context, index) {
              return NewsItem(news: newsList[index],);
            },
            itemCount: newsList.length,
          );
        }
      },
    );
  }
}
