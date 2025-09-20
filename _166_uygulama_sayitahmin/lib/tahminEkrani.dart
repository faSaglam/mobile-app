import 'dart:math';
import 'package:_166_uygulama_sayitahmin/sonucEkrani.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Tahminekrani extends StatefulWidget {
  const Tahminekrani({super.key});

  @override
  State<Tahminekrani> createState() => _TahminekraniState();
}

class _TahminekraniState extends State<Tahminekrani> {
  var tfTahmin = TextEditingController();
  late int rasgeleSayi;
  int kalanHak = 5;
  String yonlendirme = "";
  var uzgun = "uzgun.png";
  var mutlu = "happy.jpg";
  @override
  void initState() {
    super.initState();
    rasgeleSayi = Random().nextInt(10);
    print("Rastgele sayi : $rasgeleSayi");
  }

  void _tahminEt() {
    if (tfTahmin.text.trim().isEmpty) {
      setState(() => yonlendirme = "Bir sayı yaz");
    }

    final int? tahmin = int.tryParse(tfTahmin.text);
    if (tahmin == null) {
      setState(() => yonlendirme = "Bir sayı yaz");
      return;
    }
    setState(() {
      kalanHak = kalanHak - 1;
    });
    if (tahmin == rasgeleSayi) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Sonucekrani(sonuc: true)),
      );
      return;
    }
    if (tahmin > rasgeleSayi) {
      setState(() {
        yonlendirme = "Tahmini azalt";
      });
    }
    if (tahmin < rasgeleSayi) {
      setState(() {
        yonlendirme = "Tahmini arttır";
      });
    }
    if (kalanHak == 0) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Sonucekrani(sonuc: false)),
      );
      return;
    }
    tfTahmin.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Tahmin Ekranı"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              "Kalan Hak : $kalanHak",
              style: TextStyle(
                color: Colors.pink,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            Text(
              "Yardım : $yonlendirme",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                controller: tfTahmin,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  labelText: "Tahmin",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
              ),
            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: _tahminEt,
              // #region EskiMantık
              // () {
              //   setState(() {
              //     kalanHak = kalanHak - 1;
              //   });
              //   int tahmin = int.parse(tfTahmin.text);
              //   if (tahmin == rasgeleSayi) {
              //     Navigator.pushReplacement(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) => Sonucekrani(sonuc: true),
              //       ),
              //     );
              //     return;
              //   }
              //   if (tahmin > rasgeleSayi) {
              //     setState(() {
              //       yonlendirme = "Tahmini azalt";
              //     });
              //   }
              //   if (tahmin < rasgeleSayi) {
              //     setState(() {
              //       yonlendirme = "Tahmini arttır";
              //     });
              //   }
              //   if (kalanHak == 0) {
              //     Navigator.pushReplacement(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) => Sonucekrani(sonuc: false),
              //       ),
              //     );
              //     return;
              //   }
              //   tfTahmin.text = "";
              // },
              // #endregion
           
              child: Text("Tahmin Et", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
