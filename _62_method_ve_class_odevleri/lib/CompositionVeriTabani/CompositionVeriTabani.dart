//TABLOLAR

/*
Kategori tablosu
kategori_id / kategori_ad

1           / Dram
2           / Komedi
3           / Bilim Kurgu
 */

/*
Yonetmenler Tablosu
yonetmen_id / yonetmen_ad
1           /Ceylan
2           / Tantino
3           /2013

 */

//Filmler Tablosu
/*
film_id / film_ad / film_yil / kategori_id / yonetmen_id
1       / Django /  2013     / 1           / 2
2       / Inception/2006    / 3            / 3
 */

import 'package:method_ve_class_odevleri/CompositionVeriTabani/Filmler.dart';
import 'package:method_ve_class_odevleri/CompositionVeriTabani/Kategoriler.dart';
import 'package:method_ve_class_odevleri/CompositionVeriTabani/Yonetmenler.dart';

void main(){
  var k1 = Kategoriler(1, "Dram");
  var k2 = Kategoriler(2, "Komedi");

  var y1 = Yonetmenler(1, "Ceylan");
  var y2 = Yonetmenler(2, "Tarantino");

  var f1 = Filmler(1, "Django", 2013, k1, y2);

  print("Film adi : ${f1.film_id}");
  print("Film ad : ${f1.film_ad}");
  print("Film yil : ${f1.film_yil}");
  print("Film kategori : ${f1.kategori.kategori_ad}");
  print("Film yonetmen : ${f1.yonetmen.yonetmen_ad}");


}