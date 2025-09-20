void main(){
  var sayilar = <int>[34,67];

  //maks index 1 olduğu için hata verecektir.
  
  try{
    sayilar[3]=89;
    print("İşlem tamam");
  }
  catch(e){
    print("Liste boyutunu aştınız");

  }
  

  
}