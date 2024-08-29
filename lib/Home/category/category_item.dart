import 'package:flutter/material.dart';
import 'package:newsapp/Home/category/category_details.dart';
import 'package:newsapp/Model/Category.dart';
import 'package:newsapp/app_colors.dart';

class CategoryItem extends StatelessWidget {
  final Category category;
  final int index;
  CategoryItem({required this.category, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: category.color,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
          bottomRight: Radius.circular(index % 2 != 0 ? 25 : 0),
          bottomLeft: Radius.circular(index % 2 == 0 ? 25 : 0),
        ),
      ),
      child: Column(
        children: [
          Image.asset(category.imagePath,height: MediaQuery.of(context).size.height*0.15,),
          SizedBox(height: 8), // Added SizedBox for spacing
          Text(
            category.title,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(color: AppColors.whiteColor,fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
}
