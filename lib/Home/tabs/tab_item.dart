import 'package:flutter/material.dart';
import 'package:newsapp/Model/SourceResponse.dart';
import 'package:newsapp/app_colors.dart';

class TabItem extends StatelessWidget {
  bool isSelected;
  Sources source;
  TabItem({required this.isSelected,required this.source});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6),
      margin: EdgeInsets.only(top: 12),
      decoration: BoxDecoration(
        color: isSelected ? AppColors.primaryLightColor : Colors.transparent,
        border: Border.all(
            color: AppColors.primaryLightColor,
            width: 3
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(source.name ?? "",
        style: Theme
            .of(context)
            .textTheme
            .titleLarge
            ?.copyWith(
            color: isSelected ? AppColors.whiteColor : AppColors
                .primaryLightColor
        ),),
    );
  }
}
