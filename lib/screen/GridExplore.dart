import 'package:flutter/material.dart';
import 'package:appanimestrue/model/Item.dart';
import 'package:appanimestrue/screen/ItemList.dart';
import 'package:appanimestrue/constant/Constant.dart';
class GridExplore extends StatelessWidget {
  @override

  List<Item> itemList;

  @override
  Widget build(BuildContext context) {
    itemList = _itemList();
    return  Scaffold(
      backgroundColor:Colors.red,
      appBar: AppBar(
        elevation: 0.0,

        title: const Text('Ultimos Episodios', style: TextStyle(color: Colors.white)),
        brightness: Brightness.dark,
          backgroundColor: Colors.transparent,
           )
      ,
           body: _gridView(),
    );
  }

  Widget _gridView() {
    return GridView.count(
      crossAxisCount: 2,
      padding: EdgeInsets.all(2.0),
      childAspectRatio: 8.0 / 9.0,
      children: itemList
          .map(
            (Item) => ItemList(item: Item),
      ).toList(),
    );
  }

}
List<Item> _itemList() {
  return [
  Item(
    id: 0,
    titulo: 'Terno Móvel Gundam',
    anime: 'Mobile Suit Gundam',
    imagem: 'https://i.imgur.com/plea1vD.jpg',
  ),
    Item(
      id: 1,
      titulo: 'Escolha',
      anime: 'Shoumetsu Toshi',
      imagem: 'https://i.imgur.com/E8Ojrj9.jpg',
    ),
    Item(
      id: 2,
      titulo: 'Pedras Rolando e Sete Cavaleiros',
      anime: 'Fairy Gone',
      imagem: 'https://i.imgur.com/yUyPvSh.jpg',
    ),
    Item(
      id: 3,
      titulo: 'A menina da escola secundária e os fantoches de sombra',
      anime: 'Joshi Kausei',
      imagem: 'https://i.imgur.com/VtEwdUp.jpg',
    ),
  ];
}
