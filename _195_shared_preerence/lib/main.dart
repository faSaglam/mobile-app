import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'SayfaA.dart';
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
      home: const MyHomePage(title: 'Ana Sayfa'),
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
 
 Future<void> veriKaydi() async {

  var sp = await SharedPreferences.getInstance();
  sp.setString("kullanici", "Ahmet");
  sp.setInt("yas", 30);
  sp.setBool("evli", true);
  sp.setDouble("maas", 5000.50);
  sp.setStringList("hobiler", ["Yüzme", "Koşu", "Kitap Okuma"]);
  print("Veriler kaydedildi.");

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
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>  SayfaA()));
              },
              child: const Text('Geçiş Yap'),
            ),
           
          ],
        ),
      ),

    );
  }
}
