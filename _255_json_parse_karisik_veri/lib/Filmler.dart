import 'package:_255_json_parse_karisik_veri/Kategoriler.dart';
import 'package:_255_json_parse_karisik_veri/Yonetmenler.dart';

class Filmler {
  String filmId;
  String filmAd;
  String filmYil;
  String filmResim; 
  Kategoriler kategori;
  Yonetmenler yonetmen;

  Filmler(this.filmId, this.filmAd, this.filmYil, this.filmResim, this.yonetmen , this.kategori);

  factory Filmler.fromJson(Map<String, dynamic> json) {
    return Filmler(
        json["filmId"] as String,
        json["filmAd"] as String,
        json["filmYil"] as String,
        json["filmResim"] as String,
        Yonetmenler.fromJson(json["yonetmen"]),
        Kategoriler.fromJson(json["kategori"])
        );
  }
}
