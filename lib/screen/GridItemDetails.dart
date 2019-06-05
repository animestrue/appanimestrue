import 'package:flutter/material.dart';
import 'package:appanimestrue/model/Item.dart';
import 'package:appanimestrue/screen/Player.dart';

class GridItemDetails extends StatelessWidget {
  final Item item;

  GridItemDetails(this.item);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: true,
      appBar: AppBar(
        title: Text(item.anime),
      ),
      backgroundColor: Colors.black,
         body: ListView(
        children: <Widget>[
          Player(),
          Container(
            padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 20.0),
            child: Text(
              item.titulo,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
          ),
          InkWell(
            onTap: () => {},
            child: Container(
              margin: EdgeInsets.fromLTRB(50.0, 5.0, 50.0, 5.0),
              width: 80.0,
              height: 40.0,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(2.0),
              ),
              child: Center(
                child: Text(
                  'Todos Episodios',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),

        ],
        // ),
        //],
      ),
    );
  }
}



