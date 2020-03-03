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
  Widget build(BuildContext context) {
    var futureBuilder = FutureBuilder(
      future: API().getData(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
          case ConnectionState.waiting:
            return new Center(
              child: CircularProgressIndicator(),
            );
          default:
            if (snapshot.hasError)
              return new Text('Error: ${snapshot.error}');
            else
              return createListView(context, snapshot);
        }
      },
    );
    return futureBuilder;
  }


  Widget createListView(BuildContext context, AsyncSnapshot snapshot) {
    List<UltimosEpisodios> videos = snapshot.data;
    return   StaggeredGridView.count(
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
      crossAxisCount: 4,
      padding: const EdgeInsets.all(4.0),
      staggeredTiles: const <StaggeredTile>[
        const StaggeredTile.fit(4),
        const StaggeredTile.fit(2),
        const StaggeredTile.fit(2),
        const StaggeredTile.fit(2),
        const StaggeredTile.fit(2),
        const StaggeredTile.fit(2),
        const StaggeredTile.fit(2),
      ],
      children: videos.map((UltimosEpisodios) => ItemList(id: UltimosEpisodios)).toList(),

    );

  }
}


