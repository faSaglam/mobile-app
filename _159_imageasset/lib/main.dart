import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowMaterialGrid: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const Anasayfa(title: 'Flutter Demo Home Page'),
    );
  }
}

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key, required this.title});

  final String title;

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  final List<String> _resimler = ["wow.jpg", "diablo.png"];
  int _aktifResimIndex = 0;
  
  void _resimDegistir(){
    setState(() {
      
      _aktifResimIndex = (_aktifResimIndex+1) % _resimler.length;
    });
  }


  @override
  Widget build(BuildContext context) {
     final String aktifResimAdi = _resimler[_aktifResimIndex];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("resimler/$aktifResimAdi"),
            ElevatedButton(
              onPressed:_resimDegistir,
              child: Text("Next"),
            ),
          ],
        ),
      ),
    );
  }
}
