//Başka bir sınıftan oluşan nesneler
//Başka bir sınıfın değişkeni olabilir.

class Adres{
  late String il;
  late String ilce;
  Adres(this.il,this.ilce);
}

class Kisiler{
  String ad;
  Adres adres;

  Kisiler(this.ad,this.adres);

}

void main(){

  var adres = Adres("İstanbul","Esenyurt");
  var kisi = Kisiler("Omer",adres);

  print("Kişi ad: ${kisi.ad}");
  print("Adres : ${adres.il}");

}