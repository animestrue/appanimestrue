import 'package:flutter/material.dart';
import 'package:appanimestrue/constant/Constant.dart';
class GridExplore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
          appBar: AppBar(

            centerTitle: true,
            title: Text('Explorar'),
            textTheme: TextTheme(title: TextStyle(color: Colors.black,fontSize: 20)),
          ),

      );
  }
}