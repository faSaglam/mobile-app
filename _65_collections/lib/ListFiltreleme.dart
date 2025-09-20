//Koşul yazılmalıdır.
//Iterable classından yararlanılır.
/*
Iterable<Ogrenciler> filtelenenListe = ogrenciler.where((ogrenci){
 return ogrenci.no>100;
 ]));

 ogrenciler = filtrenelenListe.toList();


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

  for (var o in ogrenciler) {
    print(
        "Ogrenci no:${o.no} | Ogrenci ad: ${o.ad} | Ogrenci sinif: ${o.sinif}");
  }
  
  print("Filtrelenmiş hali.");

  Iterable<Ogrenciler> filtelenenListe = ogrenciler.where((ogrenci){
    return ogrenci.no > 200;
  });
  ogrenciler = filtelenenListe.toList();
  for (var o in ogrenciler) {
    print(
        "Ogrenci no:${o.no} | Ogrenci ad: ${o.ad} | Ogrenci sinif: ${o.sinif}");
  }


  Iterable<Ogrenciler> filtelenenListe2 = ogrenciler.where((ogrenci){
    return ogrenci.ad.contains("O");
  });
  ogrenciler = filtelenenListe2.toList();
  for (var o in ogrenciler) {
    print(
        "Ogrenci no:${o.no} | Ogrenci ad: ${o.ad} | Ogrenci sinif: ${o.sinif}");
  }

}