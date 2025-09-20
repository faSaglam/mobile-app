import 'package:_191_detailgridview/Filmler.dart';
import 'package:flutter/material.dart';

class DetaySayfa extends StatefulWidget {
  Filimler film;
   DetaySayfa({required this.film });

  @override
  State<DetaySayfa> createState() => _DetaySayfaState();
}

class _DetaySayfaState extends State<DetaySayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(widget.film.film_ad),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("images/${widget.film.film_resim}",), // Replace with actual image path
            Text(
              "${widget.film.film_fiyat} TL",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            ElevatedButton(onPressed: (){
              print("${widget.film.film_ad} sepete eklendi");
            }, child: Text("Sepete Ekle")),
          ],
        ),
      ),
    );
  }
}