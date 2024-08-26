import 'package:flutter/material.dart';
import 'package:newsapp/Home/home_screen.dart';
import 'package:newsapp/theme_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      theme: MyThemeData.lightTheme,
      routes: {
        HomeScreen.routeName:(context)=>HomeScreen()
      },
    );
  }
}
