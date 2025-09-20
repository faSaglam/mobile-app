void main(){

  var isimler = <String>[]; // veya var isimler = [];

  var yiyecekler = List<String>.empty(growable: true); //önerilen tip güvenli yaklaşım

  var sehirler = []; // dynamic türünde liste

  var plakalar = <int>[]; //	En sade ve geçerli kullanım

  var numaralar = [16,3,5];

  var meyveler = <String>[];

  //ekleme -add en sona ekler
  meyveler.add("Elma");
  meyveler.add("Armut");
  meyveler.add("Muz");
  print(meyveler);

  meyveler.add("Kiraz");
  print(meyveler);

  //update
  meyveler[1] = "Kivi";
  print(meyveler);

  //istediğimiz indexe ekler diğerlerini kaydırır.
  meyveler.insert(3,"Portakal");
  print(meyveler);

  


}