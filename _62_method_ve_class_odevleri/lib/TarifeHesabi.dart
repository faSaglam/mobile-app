int tarifeUcreti(int GB){
  if(GB>50){
    int kotaAsimi = (GB-50)*4;
    int fatura = 100 + kotaAsimi;
    return fatura;
  }
  else{
    int fatura = 100;
    return fatura;
  }
}
void main(){

  print(tarifeUcreti(100));
  print(tarifeUcreti(50));
  print(tarifeUcreti(51));
}