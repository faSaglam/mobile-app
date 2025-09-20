class Mesajlar {
  int mesaj_kod;
  String mesaj_icerik;

  Mesajlar({required this.mesaj_kod, required this.mesaj_icerik});

  factory Mesajlar.fromJson(Map<String,dynamic> json){
    return Mesajlar(
      mesaj_kod: json['mesaj_kod'] as int,
      mesaj_icerik: json['mesaj_icerik'] as String,
    );
  }
}