import 'dart:io';

class Ogrenciler{
  int no;
  String ad;
  String sinif;

  Ogrenciler(this.no, this.ad, this.sinif);
}

void main(){
  int sayac = 1;
  var ogrenciler =<Ogrenciler>[];

  while(true){
    print("Öğrenci adı giriniz");
    String ad = stdin.readLineSync()!;
    print("Öğrenci sınıfını giriniz");
    String sinif = stdin.readLineSync()!;

    var yeniOgrenci = Ogrenciler(sayac, ad, sinif);
    ogrenciler.add(yeniOgrenci);
    sayac +=1;
    print("Çıkmak için - 1 , Devam etmek için başka bir rakama basınız.");
    int cikis = int.parse(stdin.readLineSync()!);

    if(cikis == 1){
      print("Çıkış yapıldı.");
      break;
    }
  }
  for(var o in ogrenciler){
    print("${o.ad} , ${o.sinif} , ${o.no}");
  }
}