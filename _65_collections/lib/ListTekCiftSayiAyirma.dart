void main(){

  var sayilar = <int>[1,2,3,4,5];
  var tekSayilar = <int>[];
  var ciftSayilar = <int>[];



  for(var s in sayilar){
    int sayi = s%2;
    if(sayi == 0){
      ciftSayilar.add(s);
    }
    else{
      tekSayilar.add(s);
    }


  }
  print(ciftSayilar);
  print(tekSayilar);

}