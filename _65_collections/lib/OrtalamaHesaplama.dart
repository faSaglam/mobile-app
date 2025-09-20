

void main(){

  var sayilar = <int>[];

  sayilar.add(100);
  sayilar.add(200);
  sayilar.add(40);
  sayilar.add(90);
  print(sayilar);
  int toplam = 0;
  for(var i = 0 ; i<sayilar.length;i++){
    toplam = toplam + sayilar[i];
  }
  print(toplam);
  int len = sayilar.length;
  print(toplam/len);


}