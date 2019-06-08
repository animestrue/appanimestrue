import 'package:flutter/material.dart';
import 'package:appanimestrue/constant/Constant.dart';
import 'package:appanimestrue/screen/SplashScreen.dart';
import 'package:appanimestrue/screen/HomeScreen.dart';
import 'package:appanimestrue/screen/GridExplore.dart';

void main() => runApp(MaterialApp(
  title: 'Animes True',
  home: SplashScreen(),
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
    primaryColor: Colors.white,
    accentColor: Color(0xFFFFA726),
    canvasColor: Colors.yellow[900],
  ),
  routes: <String, WidgetBuilder>{
    splash_screen: (BuildContext context) => SplashScreen(),
    home_screen: (BuildContext context) => HomeScreen(),
    explorer: (BuildContext context) => GridExplore(),
  },
));
