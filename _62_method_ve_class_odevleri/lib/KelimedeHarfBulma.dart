
import 'dart:io';

void kacAdet(String kelime , String harf){
  
  if(harf.length > 1){
    print("Bir adet harf giriniz");
  }
  int sayac = 0;
  String kelimeLow= kelime.toLowerCase();
  String harfLow = harf.toLowerCase();



  for(int i = 0 ; i < kelimeLow.length;i++){
    if(kelimeLow[i] == harfLow){
      sayac ++;
    }
  }
  print("$kelime'nin içinde $harf harfi $sayac kez geçmektedir.");

}

void main(){
  print("Kelime giriniz");
  int kelime = int.parse(stdin.readLineSync()!);

  print("Harf giriniz");
  int harf = int.parse(stdin.readLineSync()!);

}