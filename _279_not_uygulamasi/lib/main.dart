import 'package:_288_not_uygulamasi/NotlarCevap.dart';
import 'package:_288_not_uygulamasi/NotlarDetay.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/retry.dart';
import 'dart:convert';
import 'Notlar.dart';

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
  List<Notlar> parseNotlarCevap(String cevap) {
    return NotlarCevap.fromjson(json.decode(cevap)).notlarListesi;
  }

  Future<List<Notlar>> tumNotlariGoster() async {
    var url = "http://omerfaruksaglam.com/notlar/tum_notlar.php";
    var cevap = await http.get(Uri.parse(url));
    return parseNotlarCevap(cevap.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
              future: tumNotlariGoster(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  var notListesi = snapshot.data;
                  return ListView.builder(
                    itemCount: notListesi?.length,
                    itemBuilder: (context, index) {
                      var not = notListesi?[index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NotlarDetay(not: not),
                            ),
                          );
                        },
                        child: SizedBox(
                          height: 50,
                          child: Card(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(not!.ders_adi),
                                Text(not.not1),
                                Text(not.not2),
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
          ),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyHomePage(title: "title"),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero, // Dik köşeler
                    ),
                    minimumSize: const Size(0, 50),
                  ),
                  child: Icon(Icons.plus_one),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
