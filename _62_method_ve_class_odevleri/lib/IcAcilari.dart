import 'dart:io';

int icAcilariToplami(int kenarSayisi){
  int sonuc = 0;
  if(kenarSayisi<3){
    return sonuc;
  }
  sonuc = (kenarSayisi-2)*180;
  return sonuc;
}

void main(){
  int icAcilari=0;
  print("Cok genin kenar sayısını giriniz");
  int kenarSayisi = int.parse(stdin.readLineSync()!);
  icAcilari = icAcilariToplami(kenarSayisi);
  print(icAcilari);
  
}