import 'package:_190_detalilistview/Yemekler.dart';
import 'package:flutter/material.dart';

class Detaysayfa extends StatefulWidget {
  Yemekler  yemek;
  Detaysayfa({required this.yemek,super.key});

  @override
  State<Detaysayfa> createState() => _DetaysayfaState();
}

class _DetaysayfaState extends State<Detaysayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(widget.yemek.yemek_adi),
      ),
      body: Center(
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset( "images/${widget.yemek.yemek_resim_adi}"),
            Text("${widget.yemek.yemek_fiyat} TL",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            
            SizedBox(
              width: 200 ,
              height: 50,
            
              child: ElevatedButton(
                onPressed: () {
                  print( "Sipariş Verildi: ${widget.yemek.yemek_adi}");
                },
                child: Text("Sipariş Ver"),
                style: ElevatedButton.styleFrom(
                  textStyle: TextStyle(fontSize: 15),
                  padding: EdgeInsets.all(10),

                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}