import 'package:flutter/material.dart';
import 'package:newsapp/API/api_manager.dart';
import 'package:newsapp/Home/category/category_details.dart';
import 'package:newsapp/Home/category/cateogry_fragment.dart';
import 'package:newsapp/Home/tabs/tab_widget.dart';
import 'package:newsapp/Model/SourceResponse.dart';
import 'package:newsapp/app_colors.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName='home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        color: AppColors.whiteColor,
        child: Image.asset('assets/images/main_background.png',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.cover,),
      ),
      Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            'News App',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        body:CategoryFragment(),
      )
    ],);
  }
}
