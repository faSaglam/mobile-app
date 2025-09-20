import 'dart:math';

void main(){

  //rastgele sayi
  // minimum değerleri ve makismum değerleri
  int min = 5;
  int max = 10;

  var r = Random();
  int rastgeleSayi = min + r.nextInt((max-min)+1);
  print("Rastgele sayi ${rastgeleSayi}");

  //ondalikli sayilari yuvarlama
  double x = 6.5;
  int c = x.ceil();
  int f = x.floor();
  print("sayi : $x");
  print("sayinin tavana yuvarlanması : $c");
  print("sayinin aşağı yuvarlamansı: $f");
  double s = sqrt(x);
  print(" $x 'in karakoku $s");

  int y = -10;
  int a = y.abs();
  print("$y'nin mutlak değeri $a");

  num p = pow(2,3);
  print("2 nin küpü :${p}");


}