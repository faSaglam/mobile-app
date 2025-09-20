import 'package:_255_json_parse_karisik_veri/Filmler.dart';

class FilmlerCevap {
  int success;
  List<Filmler> filmlerListesi;
  FilmlerCevap(this.success, this.filmlerListesi);

  factory FilmlerCevap.fromJson(Map<String, dynamic> json) {
    var filmlerListesiJson = json["filmler"] as List;
    List<Filmler> filmlerListesi =
        filmlerListesiJson.map((e) => Filmler.fromJson(e)).toList();
    return FilmlerCevap(json["success"] as int, filmlerListesi);
  }
}