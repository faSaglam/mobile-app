class StatikClass{

  static int degisken = 10;
  static final double oran = 1.5;
  static void metod(){
    print("Merhaba");

  }
}

void main(){
  print(StatikClass.degisken);
  StatikClass.degisken = 100;
  print(StatikClass.degisken);

  print(StatikClass.oran);
  StatikClass.metod();
}