double maas(int gunler){

  int toplamSaat = gunler*8;
  if(toplamSaat > 160){
    double ekMesai = (toplamSaat - 160)*20;
    double maas = 160*10;
    double toplamMaas = maas + ekMesai;
    return toplamMaas;
  }
  else{
    double toplamMaas = toplamSaat*10;
    return toplamMaas;
  }

}

void main(){
  print(maas(21));

}