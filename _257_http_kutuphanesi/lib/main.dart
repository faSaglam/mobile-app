import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';  
import 'Kisiler.dart';
import 'KisilerCevap.dart'  ;
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
  

  List<Kisiler> parseKisilerCevap(String cevap) {
    // var jsonVeri = json.decode(cevap);
    // var kisilerCevap = KisilerCevap.fromJson(jsonVeri);
    // List<Kisiler> kisilerListesi = kisilerCevap.kisilerListesi;
    // return kisilerListesi;
    return KisilerCevap.fromJson(json.decode(cevap)).kisilerListesi;
  }
  Future<List<Kisiler>> tumKisiler() async {
    var url = Uri.parse("https://omerfaruksaglam.com/test/tum_kisiler.php");
    var cevap = await http.get(url);
    return parseKisilerCevap(cevap.body);
  }
  
  Future<List<Kisiler>> kisilerAra(String aramaKelimesi) async {
    var url = Uri.parse("https://omerfaruksaglam.com/test/tum_kisiler_arama.php");
    var veri = {"kisi_ad": aramaKelimesi};
    var cevap = await http.post(url, body: veri);
    return parseKisilerCevap(cevap.body);
  }
    
  Future<void> kisiSil(int kisi_id) async {
    var url = Uri.parse("https://omerfaruksaglam.com/test/delete_kisiler.php");
    var veri = {"kisi_id": kisi_id.toString()};
    var cevap = await http.delete(url, body: veri);
    print("Silme İşlemi Sonucu : ${cevap.body}");
  }
  // Future<void> kisiEkle(String kisi_ad, String kisi_tel ) async {
  //   var url = Uri.parse("https://omerfaruksaglam.com/test/insert_kisiler.php");
  //   var veri = {"kisi_ad": kisi_ad, "kisi_tel": kisi_tel};
  //   var cevap = await http.post(url, body: veri);
  //   if(cevap.statusCode == 200) {
  //     var jsonVeri = json.decode(cevap.body);
  //     if (jsonVeri["success"] == 1) {
  //       print("Ekleme Başarılı");
  //     } else {
  //       print("Ekleme Başarısız");
  //     }
  //   } else {
  //     print("Sunucu cevabı (raw): ${cevap.body}");
  //   }
  
  // }
  Future<void> kisiEkle(String ad, String tel) async {
  final url = Uri.parse("https://omerfaruksaglam.com/test/insert_kisiler.php");

  final response = await http.post(
    url,
    body: {
      'kisi_ad': ad,
      'kisi_tel': tel,
    },
  );

  if (response.statusCode == 200) {
    final jsonResponse = jsonDecode(response.body);
    if (jsonResponse['success'] == 1) {
      print("✅ Kayıt başarılı: ${jsonResponse['message']}");
    } else {
      print("⚠️ Hata: ${jsonResponse['message']}");
    }
  } else {
    print("❌ Sunucuya ulaşılamadı. Status code: ${response.statusCode}");
  }
}
    Future<void> kisiGuncelle(int kisi_id,String kisi_ad, String kisi_tel ) async {
    var url = Uri.parse("https://omerfaruksaglam.com/test/update_kisiler.php");
    var veri = {"kisi_id":kisi_id.toString(),"kisi_ad": kisi_ad, "kisi_tel": kisi_tel};
    print(veri);
    var cevap = await http.post(url, body: veri);
    if(cevap.statusCode == 200) {
      var jsonVeri = json.decode(cevap.body);
      if(jsonVeri["success"] == 1) {
        print("Güncelleme Başarılı");
      } else {
        print("Güncelleme Başarısız");
      }
    } else {
      print("Sunucu Hatası : ${cevap.statusCode}");
    }
  }
  Future<void> kisileriGoster() async {
    var liste = await tumKisiler();
    for (var k in liste) {
      print("**********");
      print("Kişi No : ${k.kisi_id}");
      print("Kişi Ad : ${k.kisi_ad}");
      print("Kişi Tel : ${k.kisi_tel}");
    }
  }
  @override
  void initState() {
    super.initState();
   // kisileriGoster();
    //kisilerAra("Ömer");
    kisiEkle( "Faruk", "555555555");
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
           
          ],
        ),
      ),

    );
  }
}
