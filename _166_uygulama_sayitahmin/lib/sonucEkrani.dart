import 'package:flutter/material.dart';

class Sonucekrani extends StatefulWidget {
  
  final bool sonuc;
  const Sonucekrani({Key? key, required this.sonuc}) : super(key: key);
  @override
  State<Sonucekrani> createState() => _SonucekraniState();
}

class _SonucekraniState extends State<Sonucekrani> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Sonuç Ekranı"),
      ),
      body: Center(
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset(widget.sonuc ? "images/happy.jpg" :"images/uzgun.jpg"),
            Text(widget.sonuc ? "Kazandınız!" : "Kaybettiniz.",style:TextStyle(color: Colors.grey,fontWeight:FontWeight.bold,fontSize: 32)),
            ElevatedButton(
              style:ElevatedButton.styleFrom(
                backgroundColor:Colors.blue,
              ),
              onPressed: (){
                Navigator.pop(context);

            }, 
            child: Text("Oyuna Başla",style: TextStyle(color: Colors.white),),
            )
          ],
        ),
      ),
    );
}
}