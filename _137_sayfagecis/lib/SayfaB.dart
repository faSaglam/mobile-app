import 'package:_137_sayfagecis/main.dart';
import 'package:flutter/material.dart';

class SayfaB extends StatefulWidget {
  const SayfaB({super.key});

  @override
  State<SayfaB> createState() => _SayfaBState();
}

class _SayfaBState extends State<SayfaB> {


  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Sayfa B"),
        leading: IconButton(
          // android ve ios da otomatik gelen geri tuşuna farklı bir fonksiyon atamak istedik
          onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => Anasayfa()),
            // );
            Navigator.pop(context); // default bu çalışır yazmaya gerek yok
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: PopScope(
        canPop: false,
        onPopInvokedWithResult: (didPop,result){
          
          print("Geri dönüş tuşuna tıklandı");

        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Geldiği sayfaya dön"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).popUntil((route) => route.isFirst);
                },
                child: Text("Anasayfaya Dön"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Anasayfa()),
                  );
                },
                child: Text("Anasayfaya Geçiş Yap"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
