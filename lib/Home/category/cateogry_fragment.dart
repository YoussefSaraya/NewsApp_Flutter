import 'package:flutter/material.dart';
import 'package:newsapp/Home/category/category_item.dart';
import 'package:newsapp/Model/Category.dart';
import 'package:newsapp/app_colors.dart';

class CategoryFragment extends StatelessWidget {
  var categorylist = Category.getCategories();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Pick your category\nof interest',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: AppColors.darkergreyColor,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15), // Added SizedBox for spacing
            Expanded(
              // Used Expanded to take up remaining space
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, mainAxisSpacing: 8, crossAxisSpacing: 8),
                itemBuilder: (context, index) {
                  return CategoryItem(
                      category: categorylist[index], index: index);
                },
                itemCount: categorylist.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
