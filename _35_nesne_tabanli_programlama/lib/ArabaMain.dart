import 'package:nesne_tabanli_programlama/Araba.dart';

void main(){
  var bmw = Araba();
  bmw.calisiyormu = true;
  bmw.hiz = 250;
  bmw.renk = "lacivert";
  //print("${bmw.calisiyormu} , ${bmw.renk} , ${bmw.hiz}");

  bmw.calistir();
  bmw.bilgiAl();

  bmw.gazaBas();
  bmw.bilgiAl();

  bmw.freneBas();
  bmw.bilgiAl();

  bmw.hizDegistir(100);
  bmw.bilgiAl();

  bmw.hizDegistir(-10);
  bmw.bilgiAl();

  bmw.durdur();
  bmw.bilgiAl();

  var limuzin = Araba();
  limuzin.renk = "siyah";
  limuzin.hiz = 120;
  limuzin.calisiyormu=true;

  limuzin.bilgiAl();
}