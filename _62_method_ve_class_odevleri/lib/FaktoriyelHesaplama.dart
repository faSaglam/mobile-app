int faktoriyel(int sayi){
  int sonuc =1;
  while(sayi > 0){
    sonuc = sonuc * sayi;
    sayi --;

  }
  return sonuc;
}

void main(){

  int s1 = faktoriyel(3);
  print(s1);
  int s2 = faktoriyel(0);
  print(s2);

  

}