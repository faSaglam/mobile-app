void main(){
  var meyveler = <String>[];
  meyveler.add("Elma");
  meyveler.add("Armut");
  meyveler.add("Muz");
  meyveler.add("Kiraz");

  //sadece içerik gerekirse
  for(var meyve in meyveler){
    print(meyve);
  }
  for (var m in meyveler) {
    print(m);
  }

  //index ve içerik gerekirse
  for(var i = 0;i<meyveler.length;i++)
    {
      print("$i. ${meyveler[i]}");
    }


}