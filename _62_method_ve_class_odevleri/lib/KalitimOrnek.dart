//Ev superclass - pencere sayisi
//Saray - pencere ve kule sayisi
//villa - garajVarMı - pencere sayisi

class Ev{
  int pencereSayisi;
  Ev(this.pencereSayisi);
}

class Saray extends Ev{
  int kuleSayisi;

  Saray(this.kuleSayisi,int pencereSayisi):super(pencereSayisi);
}
class Villa extends Ev{
  bool garajVarmi;

  Villa(this.garajVarmi,int pencereSayisi):super(pencereSayisi);
}

void main(){

  var topkapiSarayi = Saray(3, 100);
  var bogazVilla = Villa(true, 10);

  print(topkapiSarayi.kuleSayisi);

}