import 'package:flutter/material.dart';
import 'package:appanimestrue/model/UltimosEpisodios.dart';
import 'package:appanimestrue/screen/GridItemDetails.dart';


class ItemList extends StatelessWidget {
  final UltimosEpisodios id;
  const ItemList({@required this.id});
  @override
  Widget build(BuildContext context) {
    return  new InkWell(
         onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => GridItemDetails(this.id),
          ),
        );
      },
       child: Card(
        elevation: 1.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AspectRatio(
              aspectRatio: 15.0 / 16,
              child: Image.network(
                id.thumbnail,
                fit: BoxFit.fill,
              ),
            ),

            new Padding(
              padding: EdgeInsets.fromLTRB(4.0, 0.0, 4.0, 2.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    id.titulo,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Color(0xFFD73C29),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 0.0),
                  Text(
                    id.anime,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Color(0xFFD73C29),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                       SizedBox(height: 2.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(

                        child: Column(
                          children: <Widget>[
                            Text(id.data,

                              style: TextStyle(
                                color: Colors.black38,
                                fontSize: 9.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                          ],
                        ),
                      ),

                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


