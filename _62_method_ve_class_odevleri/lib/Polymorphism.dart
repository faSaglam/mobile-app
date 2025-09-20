/*
Polymorphism olması için iki sınıf arasında kalıtım ilişkisi olmalıdır.
Daha kapsayıcı bir kullanım sağlamak amacıyla kullanılır
Özellikle motedların paramelerinde pm kullanırak daha kapsayıcı veriler alınabilir.
Superclass gibi görünüp subclass gibi davranır.
 */


//Personel
//Mudur - Iscı - Ogretmen

class Personel{
  void iseAlindi(){
    print("Personel mutlu");
  }
}
class Ogretmen extends Personel{

}
class Isci extends Personel{

}
class Mudur extends Personel{
  void iseAl(Personel p){
    p.iseAlindi();
  }
}

void main(){
  var mudur = Mudur();
  var isci = Isci();
  var ogretmen = Ogretmen();

  mudur.iseAl(isci);

}