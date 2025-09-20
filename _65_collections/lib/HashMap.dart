//Key value ilişkisi vardır.
//Key ile verilere erişiriz.
//var sayilar = HashMap<int,String>();
//var oranlar = HashMap<double,String>();

import 'dart:collection';


void main(){

  var iller = HashMap<int,String>();
  iller[16]="Bursa";
  iller[34]="İstanbul";
  print(iller);

  //update
  iller[16]="Yeni Bursa";
  print(iller);

  //read
  String il = iller[34]!;
  print(il);
  
  //özellikler
  print(iller.length);
  print(iller.containsKey(34));
  print(iller.containsValue("İstanbul"));
  print(iller.isEmpty);

  var anahtarlar = iller.keys;
  print(anahtarlar);
  
  for(var a in anahtarlar){
    print("Sonuç: ${iller[a]}");
  }

  //delete
  iller.remove(16);
  print(iller);
  
  iller.clear();
  print(iller);



}