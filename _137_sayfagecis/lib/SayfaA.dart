import 'package:_137_sayfagecis/Kisiler.dart';
import 'package:_137_sayfagecis/SayfaB.dart';
import 'package:flutter/material.dart';

class SayfaA extends StatefulWidget {
  /*
  final String isim;
  final int yas;
  final double boy;
  final bool bekarMi;
  const SayfaA({
    Key? key,
    required this.isim,
    required this.yas,
    required this.boy,
    required this.bekarMi,
  });
  */

  final Kisiler kisi;
  const SayfaA({Key? key,required this.kisi}):super(key:key);

  @override
  State<SayfaA> createState() => _SayfaAState();
}

class _SayfaAState extends State<SayfaA> {
  @override
  Widget build(BuildContext context) {
    final kisi = widget.kisi; 
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Sayfa A"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SayfaB()),
                );
              },
              child: Text("Sayfa B'ye git"),
            ),
            // Text("İsim : ${widget.isim}"),
            // Text("Yaş : ${widget.yas}"),
            // Text("Boy : ${widget.boy}"),
            // Text("Bekar Mı : ${widget.bekarMi}"),
            Text(kisi.isim),
            Text("${kisi.yas}"),
           Text("${kisi.boy}"),
           Text("${kisi.bekarMi}"),
          ],
        ),
      ),
    );
  }
}
