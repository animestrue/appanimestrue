import 'dart:async';
import 'dart:convert';
import 'package:appanimestrue/model/UltimosEpisodios.dart';
import 'package:http/http.dart' as http;


class API{


  Future <List<UltimosEpisodios>> getData() async {

    http.Response response = await http.get("https://animestrue.net/api/?acao=ultimosepisodios");

    if(response.statusCode == 200){


      var decoded = json.decode(response.body);

      if(decoded['episodios'].toString() == "null"){

        return  null;

      }else{
        List<UltimosEpisodios> episodios = decoded['episodios'].map<UltimosEpisodios>((map) { // a função recebe o map para transformar cada item em 1 video obj

          return UltimosEpisodios.fromJson(map);
        }).toList();

        //  print(cats);
        return episodios;
      }
    }else{
      throw Exception("Falha ao carregar os videos");

    }


  }




}