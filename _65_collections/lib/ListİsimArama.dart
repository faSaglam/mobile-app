import 'dart:io';

void main(){
  var isimler = <String>["Ömer","Kemal","Nadi","Hadi"];

  print("Aratmak için isim giriniz");
  String isim = stdin.readLineSync()!;

  for(var ad in isimler){
    if(ad == isim){
      print("İsim mevcut");
      break;
    }


  }



}