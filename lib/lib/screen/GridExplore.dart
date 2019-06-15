import 'package:flutter/material.dart';
import 'package:appanimestrue/api.dart';
import 'package:appanimestrue/model/UltimosEpisodios.dart';
import 'package:appanimestrue/screen/ItemList.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';


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
       return new Padding(
           padding: const EdgeInsets.only(top: 12.0),
           child: new StaggeredGridView.count(
             crossAxisCount: 4,
             staggeredTiles: const <StaggeredTile>[
               const StaggeredTile.fit(4),
               const StaggeredTile.fit(2),
               const StaggeredTile.fit(2),
               const StaggeredTile.fit(2),
               const StaggeredTile.fit(2),
               const StaggeredTile.fit(2),
               const StaggeredTile.fit(2),
             ],
             children: videos.map((UltimosEpisodios) => ItemList(id: UltimosEpisodios )).toList(),
             mainAxisSpacing: 4.0,
             crossAxisSpacing: 4.0,
             padding: const EdgeInsets.all(4.0),
           ));



    }


}