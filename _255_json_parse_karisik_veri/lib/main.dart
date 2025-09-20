import 'package:_255_json_parse_karisik_veri/Filmler.dart';
import 'package:_255_json_parse_karisik_veri/FilmlerCevap.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

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
  void filmlerCevapParse() {
    String jsonString = """
    {
      "success": 1,
      "filmler": [
        {
          "filmId": "1",
          "filmAd": "Django",
          "filmYil": "2012",
          "filmResim": "django.jpg",
          "yonetmen": {
            "yonetmenId": "1",
            "yonetmenAd": "Quentin Tarantino"
          },
          "kategori": {
            "kategoriId": "1",
            "kategoriAd": "Dram"
          }
        },
        {
          "filmId": "2",
          "filmAd": "Inception",
          "filmYil": "2010",
          "filmResim": "inception.jpg",
          "yonetmen": {
            "yonetmenId": "2",
            "yonetmenAd": "Christopher Nolan"
          },
          "kategori": {
            "kategoriId": "2",
            "kategoriAd": "Bilim Kurgu"
          }
        },
        {
          "filmId": "3",
          "filmAd": "Interstellar",
          "filmYil": "2014",
          "filmResim": "interstellar.jpg",
          "yonetmen": {
            "yonetmenId": "2",
            "yonetmenAd": "Christopher Nolan"
          },
          "kategori": {
            "kategoriId": "2",
            "kategoriAd": "Bilim Kurgu"
          }
        }
      ]
    }
    """;
    var jsonMap = json.decode(jsonString);
    var filmlerCevap = FilmlerCevap.fromJson(jsonMap);

    int success = filmlerCevap.success;
    List<Filmler> filmlerListesi = filmlerCevap.filmlerListesi;
    print("Success : $success");
    for (var f in filmlerListesi) {
      print("Film Ad : ${f.filmAd} - Yonetmen : ${f.yonetmen.yonetmenAd} - Kategori : ${f.kategori.kategoriAd}");
    }
  }


  @override
  void initState() {
    super.initState();
    filmlerCevapParse();
  } 
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
