import 'dart:io';

void main(){
  print("Kelime giriniz");
  String kelime = stdin.readLineSync()!;
  String kelimeTers = "";


  for(var i = kelime.length-1;i>=0;i--){
    kelimeTers = kelimeTers + kelime[i];


  }
  print(kelimeTers);

}