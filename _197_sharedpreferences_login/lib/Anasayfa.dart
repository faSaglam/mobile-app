import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  var kullaniciAdi;
  var sifre ;
  Future<void> getKullaniciBilgileri() async {
    var sp = await SharedPreferences.getInstance();
    var ka = sp.getString("kullaniciAdi");
    var s = sp.getString("sifre");
    setState(() {
      kullaniciAdi = ka ?? "Kullanıcı adı bulunamadı";
      sifre = s ?? "Şifre bulunamadı";  
    });
  }
  @override
  void initState() {
    super.initState();
    getKullaniciBilgileri();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Anasayfa"),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.exit_to_app))],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hoş geldiniz!",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text("Kullanıcı Adı: $kullaniciAdi", style: TextStyle(fontSize: 30)),
            Text("Şifre: $sifre", style: TextStyle(fontSize: 30)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Geri Dön"),
            ),
          ],
        ),
      ),
    );
  }
}
