/*
isEmpty  boş mu ? true - false
length  uzunluğu verir
contains() içerir mi
subString() string içinden istediğin kadarını al
toLowerCase()
toUpperCase()
split() belli karaktere göre böler
trim() başındaki ve sonundaki boşluğu alır.
 */

void main(){
  String str1 = "Merhaba"; //M- 0 , e-1 ,r-2 ,h-3,a-4,b-5,a-6
  print(str1.substring(0,3)); //Mer gelir 3-1 = 2

  if(str1.contains("aba")){
    print("içeriyor");
  }else{
    print("içermiyor");
  }

  print(str1.toUpperCase());
  print(str1.toLowerCase());

  String str2 = "Merhaba nasılsın?";
  var liste = str2.split(" "); //boşluk gördüğü yerde böler.
  print(liste[1]);

  String str3= " Merhaba ";
  print(str3);
  print(str3.trim());

  String str4 ="Merhaba,Dart !";
  print("$str4 boyutu : ${str4.length}");

  String str5 ="";
  print("$str5 boş mu : ${str5.isEmpty}");
}