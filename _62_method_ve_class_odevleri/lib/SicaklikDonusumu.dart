import 'dart:io';

double fahrenheit(double derece){
  double sonuc = derece * 1.8 + 32;
  return sonuc;
}

void main(){

  print("Fahrenheit'e dönüştürmek istediğiniz dereceyi giriniz.");
  double derece = double.parse(stdin.readLineSync()!);
  double dereceSonuc = fahrenheit(derece);
  print(dereceSonuc);
  

}