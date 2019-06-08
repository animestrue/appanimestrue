import 'package:meta/meta.dart';
class Item {
  int id;
  String titulo;
  String anime;
  String imagem;
  String temporada;
  String episodio;
  String url_leg;
  String urlhd_leg;
  String url_dub;
  String urlhd_dub;
  Item({
     this.id,
     this.titulo,
     this.anime,
     this.imagem,
     this.temporada,
     this.episodio,
     this.url_leg,
     this.urlhd_leg,
     this.url_dub,
     this.urlhd_dub,

  });
  factory Item.fromJson(Map<String, dynamic> parsedJson){
    return new Item(
        id: parsedJson['id'],
        titulo : parsedJson['titulo'],
      anime : parsedJson['anime'],
      imagem : parsedJson['imagem'],
      temporada : parsedJson['temporada'],
      episodio : parsedJson['episodio'],
      url_leg : parsedJson['url_leg'],
      urlhd_leg : parsedJson['urlhd_leg'],
      url_dub : parsedJson['url_dub'],
      urlhd_dub : parsedJson['urlhd_dub'],


    );
  }
}