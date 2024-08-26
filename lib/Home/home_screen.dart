import 'package:flutter/material.dart';
import 'package:newsapp/app_colors.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName='home_screen';
  const HomeScreen({super.key});

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
      )
    ],);
  }
}
