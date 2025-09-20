//Late ile hafızada değer atamadan yer ayrılmasına neden olur.
// Değişkene değer atamadan kullanmasını sağlar.

class LateKullanimi{
  //int x ; değer atamadan kullanılmaz
  late int x; // late sayesinde değer atamadık.
  int z = 10; // değer atayarak istediğimiz kadar kullanabiliriz.

}
class Kisiler1{
  late int kisi_no;
  late String kisi_ad;

}

//2. Yöntem classlar için constructor oluşturmaktır.

class Kisiler2{
  int kisi_no;
  String kisi_ad;

  Kisiler2(this.kisi_no,this.kisi_ad);
}



