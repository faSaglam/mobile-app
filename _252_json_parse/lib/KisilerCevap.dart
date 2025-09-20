import 'Kisiler.dart';
class KisilerCevap {
  int success;
  List<Kisiler> kisilerListesi; 
  KisilerCevap({required this.success, required this.kisilerListesi});

  factory KisilerCevap.fromJson(Map<String,dynamic> json){
    var jsonDizi = json['kisiler'] as List;
    List<Kisiler> kisilerListesi = jsonDizi.map((jsonDiziNesnesi) => Kisiler.fromJson(jsonDiziNesnesi)).toList();
    return KisilerCevap(
      success: json['success'] as int,
      kisilerListesi: kisilerListesi,
    );
  }

}