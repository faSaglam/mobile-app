import 'dart:io';

void main(){
  print("Adınızı giriniz");
  String? isim = stdin.readLineSync();
  print("Adınız: $isim");


  print ("Yaşınızı giriniz");
  String? yas =stdin.readLineSync();
  if(yas != null && int.tryParse(yas) != null) {
     int x = int.parse(yas);
     print("Doğum yılınız ${2025-x}");
     
  }

}