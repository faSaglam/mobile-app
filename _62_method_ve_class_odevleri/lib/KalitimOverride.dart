//Hayvan
//Memeli
//Kedi | Kopek
class Hayvan{
  void sesCikar(){
    print("Sesim yok");
  }
}
class Memeli extends Hayvan{

}
class Kedi extends Memeli{
  @override
  void sesCikar(){
    print("Miyav miyav");
  }
}

class Kopek extends Memeli{
  @override
  void sesCikar() {
    print("Hav hav");
  }
}

void main(){
  var dogo = Kopek();
  dogo.sesCikar();

  var memeli = Memeli();
  memeli.sesCikar();
  
}