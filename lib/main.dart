import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily:'sunflower', // 기본 글씨체
        textTheme: TextTheme(
          headline1: TextStyle(
            color:Colors.white,
            fontSize:80.0,
            fontWeight: FontWeight.w700,
            fontFamily:'parisienne',
          ),
          bodyText1: TextStyle(
            color:Colors.white,
            fontSize:30.0,
          ),
          bodyText2: TextStyle(
            color:Colors.white,
            fontSize:20.0,
          ),
          headline2: TextStyle(
            color:Colors.white,
            fontSize:50.0,
            fontWeight:FontWeight.w700,
          ),
        )
      ),
      home: HomeScreen(),
    );
  }
}


