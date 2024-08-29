import 'package:flutter/material.dart';
import 'package:newsapp/app_colors.dart';

class Category {
  String title;
  String id;
  String imagePath;
  Color color;

  Category({required this.title,
    required this.id,
    required this.imagePath,
    required this.color});

//      general      sports
  static List<Category> getCategories() {
    return [
      Category(title: 'Sports',
          id: 'sports',
          imagePath: 'assets/images/ball.png',
          color: AppColors.redColor),
      Category(title: 'General',
          id: 'general',
          imagePath: 'assets/images/general.png',
          color: AppColors.blueColor),
      Category(title: 'Health',
          id: 'health',
          imagePath: 'assets/images/health.png',
          color: AppColors.pinkColor),
      Category(title: 'Business',
          id: 'business',
          imagePath: 'assets/images/bussines.png',
          color: AppColors.orangeColor),
      Category(title: 'Entertainment',
          id: 'entertainment',
          imagePath: 'assets/images/environment.png',
          color: AppColors.primaryLightColor),
      Category(title: 'Technology',
          id: 'technology',
          imagePath: 'assets/images/technology.png',
          color: AppColors.lightblueColor),
      Category(title: 'Science',
          id: 'science',
          imagePath: 'assets/images/science.png',
          color: AppColors.yellowColor)
    ];
  }
}