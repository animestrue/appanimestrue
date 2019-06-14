import 'package:flutter/material.dart';
import 'package:appanimestrue/api.dart';
import 'package:appanimestrue/model/UltimosEpisodios.dart';
import 'package:appanimestrue/screen/ItemList.dart';



class GridExplore extends StatefulWidget {
  @override
  _GridExploreState createState() => _GridExploreState();

}

class _GridExploreState extends State<GridExplore> {
  @override
  List<UltimosEpisodios> itemList;
  @override
  Widget build(BuildContext context) {

    var futureBuilder =  FutureBuilder(
        future: API().getData(),
        builder: ((context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return  createListView(snapshot);
          }
        }),
    );
    return futureBuilder;



  }

  Widget createListView(snapshot) {
    List<UltimosEpisodios> videos = snapshot.data;
       return GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.only(top:2.0,bottom:5.0,right:2.0,left:2.0),
        childAspectRatio: 8.0 / 11.2,
        children:videos.map((UltimosEpisodios) => ItemList(id: UltimosEpisodios )).toList(),
      );


    }


}