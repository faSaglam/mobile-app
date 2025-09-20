/*
Küçükten büyüğe siralama
Comparator<Ogrenciler> siralama1 = (x,y) => x.no.compareTp(y.no)
ogrenciler.sort(siralama1)

Büyükten küçüğe sıralama
Comparator<Ogrenciler> siralama2 = (y,x) => x.no.compareTp(y.no)
ogrenciler.sort(siralama2)

 */

class Ogrenciler{
  int no;
  String ad;
  String sinif;
  Ogrenciler(this.no, this.ad, this.sinif);
}

void main() {
  var o1 = Ogrenciler(500, "Ahmet", "10F");
  var o2 = Ogrenciler(200, "Omer", "11F");
  var o3 = Ogrenciler(300, "Mehmet", "12C");

  var ogrenciler = <Ogrenciler>[];

  ogrenciler.add(o1);
  ogrenciler.add(o2);
  ogrenciler.add(o3);
  print("İlk hali");
  for (var o in ogrenciler) {

    print(
        "Ogrenci no:${o.no} | Ogrenci ad: ${o.ad} | Ogrenci sinif: ${o.sinif}");
  }

  siralama1(x,y) => x.no.compareTo(y.no);
  ogrenciler.sort((Ogrenciler x, Ogrenciler y) => x.no.compareTo(y.no));
  print("Sayisal değerlere göre küçükten büyüğe sıralama");
  for (var o in ogrenciler) {

    print(
        "Ogrenci no:${o.no} | Ogrenci ad: ${o.ad} | Ogrenci sinif: ${o.sinif}");
  }

  siralama2(y,x) => x.no.compareTo(y.no);
  ogrenciler.sort((Ogrenciler x, Ogrenciler y )=> x.no.compareTo(y.no));
  print("Sayisal değerlere göre büyükten bküçüğe sıralama");
  for (var o in ogrenciler) {

    print(
        "Ogrenci no:${o.no} | Ogrenci ad: ${o.ad} | Ogrenci sinif: ${o.sinif}");
  }

  siralama3(x,y) => x.ad.compareTo(y.ad);
  ogrenciler.sort((Ogrenciler x, Ogrenciler y)=>x.ad.compareTo(y.ad)) ;
  print("Metinsel değerlere göre küçükten büyüğe sıralama");
  for (var o in ogrenciler) {

    print(
        "Ogrenci no:${o.no} | Ogrenci ad: ${o.ad} | Ogrenci sinif: ${o.sinif}");
  }
}