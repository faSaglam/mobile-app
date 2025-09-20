import 'dart:convert';

import 'package:_252_json_parse/KisilerCevap.dart';
import 'package:flutter/material.dart';
import 'Mesajlar.dart';
import 'Kisiler.dart';
import 'KisilerCevap.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void mesajParse(){
  String strVeri = '{"mesaj" : {"mesaj_kod" : 1 , "mesaj_icerik" : "İşlem Başarılı"}}';
  var jsonVeri = jsonDecode(strVeri);
  var jsonNesne = jsonVeri['mesaj'];
  Mesajlar mesajNesne = Mesajlar.fromJson(jsonNesne);
  print("Mesaj Kodu : ${mesajNesne.mesaj_kod}");
  print("Mesaj İçerik : ${mesajNesne.mesaj_icerik}");


  }

  void kisilerParse(){
  String strVeri = '{"kisiler" : [{"kisi_id" : "1" , "kisi_ad" : "Ahmet Yılmaz" , "kisi_tel" : "05331234567"}, {"kisi_id" : "2" , "kisi_ad" : "Mehmet Yılmaz" , "kisi_tel" : "05337654321"}]}';
  var jsonVeri = jsonDecode(strVeri);
  var jsonDizi = jsonVeri['kisiler'] as List;
  List<Kisiler> kisilerListesi = jsonDizi.map((jsonDiziNesnesi) => Kisiler.fromJson(jsonDiziNesnesi)).toList();
  for(Kisiler k in kisilerListesi){
    print("Kişi id : ${k.kisi_id}");
    print("Kişi ad : ${k.kisi_ad}");
    print("Kişi tel : ${k.kisi_tel}");
    print("***************");
  }
  }

  void kisilerCevapParse(){
  String strVeri = '{"success" : 1 , "kisiler" : [{"kisi_id" : "1" , "kisi_ad" : "Ahmet Yılmaz" , "kisi_tel" : "05331234567"}, {"kisi_id" : "2" , "kisi_ad" : "Mehmet Yılmaz" , "kisi_tel" : "05337654321"}]}';
  var jsonVeri = jsonDecode(strVeri);

  var kisilerCevapNesne = KisilerCevap.fromJson(jsonVeri);
  print("Success : ${kisilerCevapNesne.success}");
  for(Kisiler k in kisilerCevapNesne.kisilerListesi){
    print("Kişi id : ${k.kisi_id}");
    print("Kişi ad : ${k.kisi_ad}");
    print("Kişi tel : ${k.kisi_tel}");
    print("***************");
  }
  }
  



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      ElevatedButton(
        onPressed: mesajParse,
        child: Text("Mesaj Parse"),
      ),
      SizedBox(height: 20),
      ElevatedButton(
        onPressed: kisilerParse,
        child: Text("Kisiler Parse"),
      ),
      SizedBox(height: 20),
      ElevatedButton(
        onPressed: kisilerCevapParse,
        child: Text("Kisiler Cevap Parse"),
      ),
    ],
  ),
),
    );
  }
}
