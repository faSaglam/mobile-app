// Fonksiyonlar olarak da adlandırılır.
// 2 ye ayrılır. Dönüşlüler ve git yaplar.
// geri dönüşü olmayan void
// geri dönüşü olanlar değer tipi ile başlar


void main(){

  void selamla(){
    print("Merhaba");
  }
  selamla();

  String selamla1(){
    String sonuc = "Merhaba";
    return sonuc;
  }

  String gelenSonuc = selamla1();
  print(gelenSonuc);


 
  void selamla2(String isim){
    String sonuc = "Merhaba $isim";
    print(sonuc);
  }
  selamla2("Zeynep");

  String selamla3(String isim){
    String sonuc = "Merhaba $isim";
    return sonuc;
  }
  
  String selamla3Sonuc = selamla3("Mina");
   print(selamla3Sonuc);

}