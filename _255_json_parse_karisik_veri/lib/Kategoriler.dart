class Kategoriler {
  String kategoriId;
  String kategoriAd;
  
  Kategoriler(this.kategoriId, this.kategoriAd);

  factory Kategoriler.fromJson(Map<String,dynamic> json){
    return Kategoriler(json["kategoriId"], json["kategoriAd"] as String);
  }
}
