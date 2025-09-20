//var meyveler = HashSet<String>();
//var isimler = HashSet.from(["Ahmet","Mehmet"]);
/*
List ile aynı özellikleri taşır
İçinde bulunana nesneler rastgele yerleştirilir.
Aynı veriden tekrar kayıt edilemez.
 */

import 'dart:collection';

void main(){
  var sayilar = HashSet<int>();
  var isimler = HashSet.from(["Ahmet","Mehmet"]);

  var meyveler = HashSet<String>();
  meyveler.add("Çilek");
  meyveler.add("Kivi");
  meyveler.add("Muz");
  meyveler.add("Elma");
  print(meyveler);

  print(meyveler.elementAt(0));
  print(meyveler.length);
  print(meyveler.isEmpty);
  print(meyveler.contains("Kivi"));

  for(var m in meyveler){
    print("Sonuc: $m");
  }
  for(var i = 0 ; i < meyveler.length;i++){
    print(meyveler.elementAt(i));
  }
  meyveler.remove("Muz");
  print(meyveler);
  meyveler.clear();
  print(meyveler);

}