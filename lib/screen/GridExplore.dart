import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:appanimestrue/api.dart';
import 'package:appanimestrue/model/UltimosEpisodios.dart';


class GridExplore extends StatefulWidget {
  @override
  _GridExploreState createState() => _GridExploreState();

}

class _GridExploreState extends State<GridExplore> {

  @override
  Widget build(BuildContext context) {

    var futureBuilder =  FutureBuilder(
        future: API().getData(),
        builder: ((context, snapshot){


          if (!snapshot.hasData){
            return Center(
              child: CircularProgressIndicator(),
            );
          }else{

            return createListView(snapshot);
          }

        }
        )
    );

    return new Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        elevation: 0.0,
        title: const Text(
            'Ultimos Episodios', style: TextStyle(color: Colors.white)),
        brightness: Brightness.dark,
        backgroundColor: Colors.transparent,
      ),
      body: futureBuilder,
    );

  }


  Widget createListView(snapshot) {
    List<UltimosEpisodios> videos = snapshot.data;


    return GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(2.0),
        childAspectRatio: 8.0 / 9.0,
        children: videos.map((map){

          return  Card(
            child: GridTile(
              child:  Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(map.thumbnail, fit: BoxFit.cover),
              ),
              footer: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    color: Colors.white,
                    child: Text(map.anime)),
              ),
            ),
          );


        }).toList());


  }




}
