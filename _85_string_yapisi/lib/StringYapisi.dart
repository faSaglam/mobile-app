void main(){
  String str1 = "Merhaba";
  String str2 = """
  Merhaba,
  Nasılsın?
  """;

  print(str1);
  print(str2);

  int a = 10;
  int b = 20;

  String str3 = "$a x $b = ${a*b}";
  print(str3);

  String str4 = "Merhaba";
  String str5 = "Merhaba";

  if(str4 == str5){
    print("eşit");
  }
  else {
    print("eşit değil");
  }


}