void main(){
 var meyveler = <String>[];
 meyveler.add("Elma");
 meyveler.add("Armut");
 meyveler.add("Muz");
 meyveler.add("Kiraz");

 print(meyveler.isEmpty); //false çünkü dolu
 print(meyveler.length); //uzunluk
 print(meyveler.first); // ilk eleman
 print(meyveler.last); //son eleman
 print(meyveler.contains("Kiraz")); // içeriyor mu true - false

  var liste = meyveler.reversed; // tersi çevrilmiş hali
  print(liste);

  meyveler.sort();// alfabetik veya sayısal sıralar
  print(meyveler);
  
  meyveler.removeAt(2); //2. indexteki elamanı siler
  print(meyveler);

  meyveler.remove("Muz"); //eşleşini siler. birden fazla olsa hepsini siler
  print(meyveler);

  meyveler.clear(); //tüm listeyi siler
  print(meyveler);




}