
import 'package:flutter/material.dart';
import 'Anasayfa.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
    Future<bool> oturumKontrol() async {
    var sp = await SharedPreferences.getInstance();
    var spka =  sp.getString("kullaniciAdi");
    var sps = sp.getString("sifre");
    if(spka == "a" && sps == "1") {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Anasayfa',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: FutureBuilder<bool>(future: oturumKontrol(), builder: (context,snapshot){
        if(snapshot.hasData) {
          bool gecis = snapshot.data!;
          return gecis ? Anasayfa() : MyHomePage(title: 'Giriş Ekranı');
          
        } else {
          return Center(child: CircularProgressIndicator());
        }
      })
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
  var tfKullaniciAdi = TextEditingController();
  var tfSifre = TextEditingController();

  var scaffoldKey = GlobalKey<ScaffoldState>();
  Future<void> kullaniciBilgileri() async {
    String kullaniciAdi = tfKullaniciAdi.text;
    String sifre = tfSifre.text;

    if (kullaniciAdi == "a" && sifre == "1") {
      var sp = await SharedPreferences.getInstance();
      sp.setString("kullaniciAdi", kullaniciAdi);
      sp.setString("sifre", sifre);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Kulalnıcı adı veya şifre yanlış!')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: tfKullaniciAdi,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Kullanıcı Adı',
                ),
              ),
              TextField(
                controller: tfSifre,
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Şifre',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Anasayfa()),
                  );
                },
                child: Text("Giriş Yap"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
