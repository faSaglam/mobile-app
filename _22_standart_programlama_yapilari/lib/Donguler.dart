import 'dart:io';
void main(){
//For Dongusu
  print("İsim giriniz");
  String? isim = stdin.readLineSync();

  print("Tekrar sayisi giriniz");
  String? sayi = stdin.readLineSync();

  int tekrarSayisi = int.parse(sayi!);


  for(int i=0;i<tekrarSayisi;i++)
  {
    print("${i+1}.$isim");

  }
  print("Veri sayisi giriniz");
  String? input = stdin.readLineSync();

  if(input != null){

    int? veriMiktari = int.tryParse(input);
    if(veriMiktari != null){
      while(veriMiktari! > 0){
        print(veriMiktari);
        veriMiktari -= 1;
      }
    }
  }

}

