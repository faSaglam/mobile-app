import 'dart:io';

void dikdortgenCevresi(int kisa , int uzun){
  
  int toplam = (kisa + uzun)*2;
  print(toplam);
}


void main(){

  print("Diktörtgenin kisa kenarını giriniz");
  int kisa = int.parse(stdin.readLineSync()!);

  print("Diktörtgenin uzun kenarını giriniz");
  int uzun = int.parse(stdin.readLineSync()!);

  dikdortgenCevresi(kisa, uzun);


}