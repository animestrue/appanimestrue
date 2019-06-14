class UltimosEpisodios {
  String id;
  String categoria;
  String anime;
  String titulo;
  String urlLeg;
  String urlDub;
  String thumbnail;
  int type;
  int episodio;
  int temporada;
  String data;


  UltimosEpisodios({this.id, this.categoria, this.anime, this.titulo, this.urlLeg,
    this.urlDub, this.thumbnail, this.type, this.episodio, this.temporada,
    this.data});

  factory UltimosEpisodios.fromJson(Map<String, dynamic> json) {
    return UltimosEpisodios(
      id: json['id'],
      categoria: json['categoria'],
      anime: json['anime'],
      titulo: json['titulo'],
      urlLeg: json['url_leg'],
      urlDub: json['url_dub'],
      thumbnail: json['thumbnail'],
      type: json['type'],
      episodio: json['episodio'],
      temporada: json['temporada'],
      data: json['data'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'categoria': categoria,
      'anime': anime,
      'titulo': titulo,
      'url_leg': urlLeg,
      'url_dub': urlDub,
      'thumbnail': thumbnail,
      'type': type,
      'episodio': episodio,
      'temporada': temporada,
      'data': data,

    };
  }
}