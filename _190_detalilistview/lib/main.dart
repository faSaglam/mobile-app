import 'package:_190_detalilistview/Yemekler.dart';
import 'package:flutter/material.dart';
import 'DetaySayfa.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menü',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Menü'),
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
  Future<List<Yemekler>> yemekleriGetir() async {
    var yemekListesi = <Yemekler>[];
    var y1 = Yemekler(
      yemek_id: 1,
      yemek_adi: "Köfte",
      yemek_resim_adi: "kofte.png",
      yemek_fiyat: 250.5,
    );
    var y2 = Yemekler(
      yemek_id: 2,
      yemek_adi: "Makarna",
      yemek_resim_adi: "makarna.png",
      yemek_fiyat: 150.0,
    );
    var y3 = Yemekler(
      yemek_id: 3,
      yemek_adi: "Baklava",
      yemek_resim_adi: "baklava.png",
      yemek_fiyat: 300.0,
    );
    var y4 = Yemekler(
      yemek_id: 4,
      yemek_adi: "Kadayif",
      yemek_resim_adi: "kadayif.png",
      yemek_fiyat: 200.0,
    );
    var y5 = Yemekler(
      yemek_id: 5,
      yemek_adi: "Ayran",
      yemek_resim_adi: "ayran.png",
      yemek_fiyat: 18.0,
    );
    var y6 = Yemekler(
      yemek_id: 6,
      yemek_adi: "Fanta",
      yemek_resim_adi: "fanta.png",
      yemek_fiyat: 36.0,
    );
    yemekListesi.add(y1);
    yemekListesi.add(y2);
    yemekListesi.add(y3);
    yemekListesi.add(y4);
    yemekListesi.add(y5);
    yemekListesi.add(y6);

    return yemekListesi;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: FutureBuilder<List<Yemekler>>(
        future: yemekleriGetir(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var yemekListesi = snapshot.data!;
            return ListView.builder(
              itemCount: yemekListesi.length,
              itemBuilder: (context, index) {
                var yemek = yemekListesi[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Detaysayfa(yemek: yemek),
                      ),
                    );
                  },
                  child: Card(
                    child: Row(
                      children: [
                        SizedBox(
                          width: 150,
                          height: 150,
                          child: Image.asset("images/${yemek.yemek_resim_adi}"),
                        ),
                        Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              yemek.yemek_adi,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 15),
                            Text(
                              "${yemek.yemek_fiyat} TL",
                              style: TextStyle(fontSize: 15),
                            ),
                            
                          ],
                        ),
                        Spacer(),
                        Icon(Icons.keyboard_arrow_right),
                      ],
                    ),
                  ),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Center(child: Text("Hata: ${snapshot.error}"));
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
