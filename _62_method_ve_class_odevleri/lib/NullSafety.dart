void main(){
  String? mesaj = null;
  mesaj="Merhaba";

  String? isim= null;

  String? soyad = null;

  //Yöntem 1:?

  print("Sonuç 1: ${isim?.toUpperCase()}");

  isim = "Ahmet";

  print("Sonuç 1: ${isim.toUpperCase()}");

  //Yöntem 2: ! eğer ifade null ise durdur - çöker

  soyad = "Kurşun";

  print("Sonuç 2:${soyad.toUpperCase()}");

  //Yöntem 3 : if kontrol

  print("Sonuç 3: ${isim?.toUpperCase()}");


}