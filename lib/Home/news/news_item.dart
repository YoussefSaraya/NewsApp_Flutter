import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/Model/NewsResponse.dart';
import 'package:newsapp/app_colors.dart';



class NewsItem extends StatelessWidget {
  Articles news;
  NewsItem({required this.news});

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
              child: CachedNetworkImage(
                width: double.infinity,
                height: MediaQuery.of(context).size.height*0.3,
                fit: BoxFit.cover,
                imageUrl: news.urlToImage??"",
                placeholder: (context, url) => Center(child: CircularProgressIndicator(
                  color: AppColors.primaryLightColor,
                )),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
          ),
          // Container(
          //   clipBehavior: Clip.antiAlias,
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(20),
          //
          //   ),
          //   child: Image.network(news.urlToImage??""),
          // ),
          SizedBox(height:10),
          Text(news.author??"",
          style: Theme.of(context).textTheme.titleSmall?.copyWith(color: AppColors.greyColor),),
          SizedBox(height:10),
          Text(news.title??"",
            style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),),
          SizedBox(height:10),
          Text(news.publishedAt??"",
            style: Theme.of(context).textTheme.titleSmall?.copyWith(color: AppColors.greyColor),
          textAlign: TextAlign.end,),
        ],
      ),
    );
  }
}
