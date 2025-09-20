import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

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
  var tfGirdi = TextEditingController();
  Future<void> veriYaz() async {
    var ad = await getApplicationDocumentsDirectory();
    var dosyaYolu = await ad.path;
    var dosya = File("$dosyaYolu/veri.txt");
    await dosya.writeAsString(tfGirdi.text);

    tfGirdi.text = "";
  }

  Future<void> veriOku() async {
    try {
      var ad = await getApplicationDocumentsDirectory();
      var dosyaYolu = await ad.path;
      var dosya = File("$dosyaYolu/veri.txt");

      String okunanVeri = await dosya.readAsString();
      tfGirdi.text = okunanVeri;
    } catch (e) {
      e.toString();
    }
  }
    Future<void> veriSil() async {
  
      var ad = await getApplicationDocumentsDirectory();
      var dosyaYolu = await ad.path;
      var dosya = File("$dosyaYolu/veri.txt");

      if(dosya.existsSync()) {
        await dosya.delete();
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
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextField(
                controller: tfGirdi,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Lütfen bir metin giriniz",
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      veriYaz();
                    });
                  },
                  child: Text("Yazdır"),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      veriOku();
                    });
                  },
                  child: Text("Oku"),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      veriSil();
                    });
                  },
                  child: Text("Sil"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
