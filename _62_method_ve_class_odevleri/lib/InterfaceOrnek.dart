//2 interface squeezable - eatable
//Class Elma - Tavuk - Aslan
//Elma kalıtım AmasyaElmasi

abstract class Squeezable{
  void howToSqueeze();

}

abstract class Eatable{
 void howToEat();
}

class Elma implements Squeezable,Eatable{
  @override
  void howToEat() {
   print("Soyarak ye.");
  }

  @override
  void howToSqueeze() {
    print("Mikser ile sık.");
  }

}

class Tavuk implements Eatable{
  @override
  void howToEat() {
    print("Pişirerek ye.");
  }

}

class Aslan{

}

class AmasyaElmasi extends Elma{
  @override
  void howToEat() {
   print("Yıka ye.");
  }
}

void main(){
  var e1 = Elma();
  Elma e2 = AmasyaElmasi();
  e1.howToEat();
  e2.howToEat();
  e1.howToSqueeze();
  e2.howToSqueeze();
  Eatable t1 = Tavuk();
  t1.howToEat();



}