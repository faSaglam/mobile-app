// Tip kontolü is kelimesiyle gerçekleştirilir.

//Tip dönüşümü downcasting - upcasting
// ev'in villa veya saraya dönüşmesi downcasting
//villa veya sarayın eve dönüşmesi upcastingdir.
//villa saraya , saray villaya dönüşemez


//Ornek 2
/*
Personel
Mudur - Ogretmen - İsci



 */

class Personel{
  void iseAlindi(){
    print("Personel mutlu");
  }
}
class Ogretmen extends Personel{
  void maasArttir(){
    print("Maaş arttı.Öğretmen mutlu.");
  }

}
class Isci extends Personel{

}
class Mudur extends Personel{
  void iseAl(Personel p){
    p.iseAlindi();
  }
  //Personel sınıfında maasArttir methodu yok.
  //Ogretmen sinifinda maasArttir var.
  //Personel'i öğretmene downcasting yaparak bu methoda ulaştık.
  void terfiEttir(Personel p){
    //(p as Ogretmen).maasArttir();
     // veya işçi geldiğinde hata almamak için
    if(p is Ogretmen){
         p.maasArttir();
    }
    if(p is Isci){
      print("İşçiler  terfi ettirilmez.");

    }

  }
}

void main(){
  var mudur = Mudur();
  Personel isci = Isci();
  Personel ogretmen = Ogretmen();

  mudur.iseAl(isci);
  mudur.terfiEttir(ogretmen);
  //mudur.terfiEttir(isci); olmaz çünkü kardeşler birbirine dönüşemez
  mudur.terfiEttir(isci);
}
