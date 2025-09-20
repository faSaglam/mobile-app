//Mevcut sınıftan başka bir sınıf türetmek için kullanılır.
//Kodun tekrar kullanabilirliğini arttırır.
//Sadece class için geçerlidir.
//Super class extends kelimesi ile subclass'a eklenir
//Bir sınıfın tek kalıtımı olabilir.
//Üst sınıfa superclass denir.
//Alt sınıfa subclass denir.

class Arac {
  String renk;
  String vites;
  Arac(this.renk, this.vites);

}
class Araba extends Arac{
  String kasaTipi;

  Araba(this.kasaTipi,String renk,String vites):super(renk,vites);
}
class Nissan extends Araba{
  String model;

  Nissan(this.model,String kasaTipi,String renk,String vites):super(kasaTipi,renk,vites);

}

void main (){
  var n1 = Nissan("Mini", "Hatchback", "Kırmızı", "5");
  print(n1.renk);

  var araba=Araba("hatchback", "sari", "5");
  print(araba.kasaTipi);

  var arac=Arac("mavi", "3");
  print(arac.renk);
}


