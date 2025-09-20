//class yapısında kullanabilir
//bir sınıf birden fazla interface alabilir
//implements ile kullanılır.
//hazır taslak gibidir.
//interfaceler sınıflara özellik katar.


abstract class Interface1{
  late int degisken;
  void method1();
  void method2();

}

class ClassA implements Interface1{
  @override
  int degisken = 10;

  @override
  void method1() {
    print("Interface methodu");
  }

  @override
  void method2() {
   print("Interface methodu 2");
  }

}

void main(){
  ClassA classA = ClassA();
  classA.method2();
}