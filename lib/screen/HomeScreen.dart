import 'package:dio/dio.dart';
import 'package:appanimestrue/constant/Constant.dart';
import 'package:flutter/material.dart';
import 'package:appanimestrue/NavBar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

    return NavBar();
  }
}