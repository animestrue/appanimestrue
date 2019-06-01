import 'package:flutter/material.dart';
import 'package:appanimestrue/constant/Constant.dart';
import 'package:appanimestrue/screen/SplashScreen.dart';
import 'package:appanimestrue/curved_navigation_bar.dart';
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
    SPLASH_SCREEN: (BuildContext context) => SplashScreen(),
    HOME_SCREEN: (BuildContext context) => HomeScreen(),
    EXPLORER: (BuildContext context) => GridExplore(),
  },
));
