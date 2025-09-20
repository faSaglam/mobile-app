import 'package:flutter/material.dart';
import 'Filmler.dart';
import 'DetaySayfa.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Filim App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Filmler'),
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
  Future<List<Filimler>> fetchFilmler() async {


   var filimlerList = <Filimler>[];
    var f1 = Filimler(film_id: 1, film_ad: "Anadoluda", film_resim: "anadoluda.png", film_fiyat: 15.99);
    var f2 = Filimler(film_id: 2, film_ad: "Django", film_resim: "django.png", film_fiyat: 12.99);
    var f3 = Filimler(film_id: 3, film_ad: "Inception", film_resim: "inception.png", film_fiyat: 14.99);
    var f4 = Filimler(film_id: 4, film_ad: "Interstellar", film_resim: "interstellar.png", film_fiyat: 16.99);
    var f5 = Filimler(film_id: 5, film_ad: "The Hatefuleight", film_resim: "thehatefuleight.png", film_fiyat: 18.99);
    var f6 = Filimler(film_id: 6, film_ad: "The Pianist", film_resim: "thepianist.png", film_fiyat: 20.99);

    filimlerList.addAll([f1, f2, f3, f4, f5, f6]);

    return filimlerList;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text("Filmler"),
      ),
      body: FutureBuilder(
        future: fetchFilmler(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text("Hata: ${snapshot.error}"));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text("Filmler bulunamadı."));
          } else {
            var filmler = snapshot.data!;
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2 / 3.5, //YÜKSELİK / GENİŞLİK
              ),
              itemCount: filmler.length,
              itemBuilder: (context, index) {
                var film = filmler[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetaySayfa(film: film),
                      ),
                    );
                  },
                  child: Card(
                    child: Column(
                      children: [
                        Image.asset("images/${film.film_resim}"),
                        Text(film.film_ad, style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                        Text("\$${film.film_fiyat}"),
                      ],
                    ),
                  ),
                );
              },
            );
          }
        },
      ),

    );
  }
}
