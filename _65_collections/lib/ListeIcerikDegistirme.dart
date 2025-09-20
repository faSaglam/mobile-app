void main(){

  var sayilar = <int>[1,2,3,4,5];

  for(var i = 0 ; i<sayilar.length;i++){
    int sayi = sayilar[i]*2;
    sayilar[i]=sayi;

  }
  print(sayilar);

}