
//Bos constructor
class Kisi{
  late String ad;
  late int yas;
}

class Sinif{
  String sube;
  String numara;

  Sinif(this.sube,this.numara);
}
class Ogrenci{
  int no;
  String ad;
  Ogrenci({required this.ad, required this.no});
}
void main(){

  var kisi = Kisi();
  kisi.ad = "Ahmet";
  kisi.yas = 23;

  print(kisi.ad);
  print(kisi.yas);

  var sinif = Sinif("A","10");
  print(sinif.numara + sinif.sube);
  
  var ogrenci = Ogrenci(ad: "Faruk", no: 10);
  print(ogrenci.ad);




}