import 'package:_141_back_stack/SonucEkrani.dart';
import 'package:flutter/material.dart';

class OyunEkrani extends StatefulWidget {
  const OyunEkrani({super.key});

  @override
  State<OyunEkrani> createState() => _OyunEkraniState();
}

class _OyunEkraniState extends State<OyunEkrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text("Oyun Ekranı"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () 
            { 

              //pushReplacement ile Sonuç Ekranından geriye gelirsek Anasayfa'ya döner. Bulunan sayfayı backstackten siler.
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SonucEkrani()));

            }, 
            child: Text("Oyuna Bitti")),
          ],
        ),
      ),
    );
  }
}
