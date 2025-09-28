import 'package:_276_sozluk_uygulamasi/DetaySayfa.dart';
import 'package:_276_sozluk_uygulamasi/KelimelerCevap.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/retry.dart';
import 'Kelimeler.dart';
import 'dart:convert';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
  bool aramaYapiliyorMu = false;
  String aramaKelimesi = "";

  List<Kelimeler> parseKelimelerCevap(String cevap) {
    return KelimelerCevap.fromJson(json.decode(cevap)).kelimelerListesi;
  }

  Future<List<Kelimeler>> tumKelimeleriGoster() async {
    var url = "http://omerfaruksaglam.com/kelimeler/tum_kelimeler.php";
    var cevap = await http.get(Uri.parse(url));
    return parseKelimelerCevap(cevap.body);
  }

  Future<List<Kelimeler>> aramaYap(String aramaKelimesi) async {
    var url = "http://omerfaruksaglam.com/kelimeler/kelime_ara.php";
    var veri = {"ingilizce": aramaKelimesi};
    var cevap = await http.post(Uri.parse(url), body: veri);
    return parseKelimelerCevap(cevap.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: aramaYapiliyorMu
            ? TextField(
                decoration: InputDecoration(hintText: "Kelime ara."),
                onChanged: (aramaSonucu) {
                  print("Arama sonucu : $aramaSonucu");
                  setState(() {
                    aramaKelimesi = aramaSonucu;
                  });
                },
              )
            : Text("Sözlük uygulaması"),
      ),
      body: FutureBuilder(
        future: aramaYapiliyorMu
            ? aramaYap(aramaKelimesi)
            : tumKelimeleriGoster(),

        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var kelimeListesi = snapshot.data;
            return ListView.builder(
              itemCount: kelimeListesi?.length,
              itemBuilder: (context, index) {
                var kelime = kelimeListesi?[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetaySayfa(kelime: kelime),
                      ),
                    );
                  },
                  child: SizedBox(
                    height: 50,
                    child: Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            kelime!.ingilizce,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(kelime.turkce),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          } else {
            return Center();
          }
        },
      ),
    );
  }
}
