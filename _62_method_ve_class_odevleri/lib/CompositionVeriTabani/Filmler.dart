import 'package:method_ve_class_odevleri/CompositionVeriTabani/Kategoriler.dart';
import 'package:method_ve_class_odevleri/CompositionVeriTabani/Yonetmenler.dart';

class Filmler{
  int film_id;
  String film_ad;
  int film_yil;
  Kategoriler kategori;
  Yonetmenler yonetmen;

  Filmler(this.film_id, this.film_ad, this.film_yil, this.kategori,
      this.yonetmen);

}