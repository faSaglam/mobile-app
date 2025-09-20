import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Screen',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Login Screen'),
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
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    double ekranGenisligi = ekranBilgisi.size.width;
    double ekranYuksekligi = ekranBilgisi.size.height;
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: ekranYuksekligi / 8),
                child: SizedBox(
                  width: ekranGenisligi / 4,
                  child: Image.asset("images/logo.png"),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: ekranGenisligi / 20,
                  right: ekranGenisligi / 20,
                  bottom: ekranYuksekligi / 16,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Kullanıcı adı",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: ekranGenisligi / 20,
                  right: ekranGenisligi / 20,
                  bottom: ekranYuksekligi / 16,
                ),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Şifre",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right:ekranGenisligi/17,left: ekranGenisligi/17,bottom: ekranYuksekligi/16),
                child: ElevatedButton(
                  
                  onPressed: () {
                    print("Giriş Yapıldı");
                  },
                  child: Text("Giriş Yap",
                  style: TextStyle(color: Colors.white),
                  ),
                  style:ElevatedButton.styleFrom(
                    backgroundColor:Colors.pink,
                    minimumSize: Size(ekranGenisligi, 50),
                    
                    shape:BeveledRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(5)
                    )
                
                  )
                  
                ),
              ),
              Text(
                "Yardım?",
                style: TextStyle(
                  color: const Color.fromARGB(255, 233, 30, 99),
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
