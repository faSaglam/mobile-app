import 'dart:collection';

class Ogrenciler{
  int no;
  String ad;
  String sinif;

  Ogrenciler(this.no, this.ad, this.sinif);

  //no su aynı olan kayıları kayır etmesin.
  @override
  int get hashCode => no;

  @override
  bool operator ==(Object other) {
    if(no == (other as Ogrenciler).no){
      return true;
    }
    else{
      return false;
    }

  }


}

void main(){
  var o1 = Ogrenciler(100, "Ahmet", "10F");
  var o2 = Ogrenciler(200, "Mehmet", "12A");
  var o3 = Ogrenciler(300, "Zeynep", "9C");
  var o4 = Ogrenciler(300, "Ece", "11D"); //no su var olduğu için eklenmez
  var ogrenciler = HashSet<Ogrenciler>();
  ogrenciler.add(o1);
  ogrenciler.add(o2);
  ogrenciler.add(o3);
  ogrenciler.add(o4); //no su var olduğu için eklenmez

  for(var o in ogrenciler){
    print("******");
    print("Ogrenci no: ${o.no}");
    print("Ogrenci adi: ${o.ad}");
    print("Ogrenci sinifi: ${o.sinif}");
  }




}