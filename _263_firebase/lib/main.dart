import 'dart:collection';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
  var refKisiler = FirebaseDatabase.instance.ref().child("kisiler_tablo");

  //Kişi Ekleme

  Future<void> kisiEkle() async {
    var bilgi = HashMap<String, dynamic>();
    bilgi["ad"] = "Mahmut";
    bilgi["yas"] = 25;
    refKisiler.push().set(bilgi);
  }

  //Kişi silme
  Future<void> kisiSil() async {
    refKisiler.child("-N4bX5n3mYk6vX9z4W8G").remove();
  }

  Future<void> kisiGuncelle() async {
    var guncelbilgi = HashMap<String, dynamic>();
    guncelbilgi["ad"] = "Mina";
    guncelbilgi["yas"] = 25;
    refKisiler.child("-N4bX5n3mYk6vX9z4W8G").update(guncelbilgi);
  }

  // Ne zaman veri değişirse anlık olarak dinleme
  Future<void> tumKisiler() async {
    refKisiler.onValue.listen((event) {
      var gelenDeger = event.snapshot.value as dynamic;
      if (gelenDeger != null) {
        gelenDeger.forEach((key, nesne) {
          var kisi = nesne as Map<dynamic, dynamic>;

          print("*******************");
          print("Kişi id: $key");
          print("Kişi ad: ${kisi["ad"]}");
          print("Kişi yaş: ${kisi["yas"]}");
        });
      }
    });
  }

  Future<void> tumKisilerOnce() async {
    var gelenDeger = await refKisiler.once().then((value) {
      var gelenDeger = value.snapshot.value as dynamic;
      if (gelenDeger != null) {
        gelenDeger.forEach((key, nesne) {
          var kisi = nesne as Map<dynamic, dynamic>;

          print("*******************");
          print("Kişi id: $key");
          print("Kişi ad: ${kisi["ad"]}");
          print("Kişi yaş: ${kisi["yas"]}");
        });
      }
    });
  }

  Future<void> esitlikArama() async {
    var sorgu = refKisiler.orderByChild("ad").equalTo("Mina");

    sorgu.onValue.listen((event) {
      var gelenDeger = event.snapshot.value as dynamic;
      if (gelenDeger != null) {
        gelenDeger.forEach((key, nesne) {
          var kisi = nesne as Map<dynamic, dynamic>;

          print("*******************");
          print("Kişi id: $key");
          print("Kişi ad: ${kisi["ad"]}");
          print("Kişi yaş: ${kisi["yas"]}");
        });
      }
    });
  }

  Future<void> limitliArama() async {
    var sorgu = refKisiler.limitToFirst(2);

    sorgu.onValue.listen((event) {
      var gelenDeger = event.snapshot.value as dynamic;
      if (gelenDeger != null) {
        gelenDeger.forEach((key, nesne) {
          var kisi = nesne as Map<dynamic, dynamic>;

          print("****************");
          print("Kişi id: $key");
          print("Kişi ad: ${kisi["ad"]}");
          print("Kişi yaş: ${kisi["yas"]}");
        });
      }
    });
  }

  Future<void> sinirliArama() async {
    var sorgu = refKisiler.orderByChild("yas").startAt(18).endAt(48);

    sorgu.onValue.listen((event) {
      var gelenDeger = event.snapshot.value as dynamic;
      if (gelenDeger != null) {
        gelenDeger.forEach((key, nesne) {
          var kisi = nesne as Map<dynamic, dynamic>;

          print("****************");
          print("Kişi id: $key");
          print("Kişi ad: ${kisi["ad"]}");
          print("Kişi yaş: ${kisi["yas"]}");
        });
      }
    });
  }

  @override
  void initState() {
    super.initState();
    /* var bilgi = HashMap<String, dynamic>();
    bilgi["ad"] = "Zeynep";
    bilgi["yas"] = 24;
    refTest.push().set(bilgi);*/
    //kisiEkle();
    // kisiSil();
    //kisiGuncelle();
    //tumKisiler();
    esitlikArama();
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
          children: <Widget>[],
        ),
      ),
    );
  }
}
