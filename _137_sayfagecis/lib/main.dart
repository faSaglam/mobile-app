import 'package:_137_sayfagecis/Kisiler.dart';
import 'package:_137_sayfagecis/SayfaA.dart';
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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home:  Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Anasayfa"),
   
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              var kisi = Kisiler(isim: "Ömer",yas: 29,boy: 1.90,bekarMi: true,);
              Navigator.push(context,MaterialPageRoute(builder: (context)=> 
              // SayfaA(isim: "Ömer",yas: 29,boy: 1.90,bekarMi: true,)
              SayfaA(kisi: kisi)
              ));
            },
             child: Text("Sayfa A'ya git"))
          ],

        ),
      ),

    );
  }
}
