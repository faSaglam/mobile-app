import 'package:flutter/material.dart';

class Detay extends StatefulWidget {
  
  final String ulkeAdi;
  const Detay({required this.ulkeAdi});

  @override
  State<Detay> createState() => _DetayState();
}

class _DetayState extends State<Detay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text("Detay"),
      ),
      body:Center(
        child: Text(widget.ulkeAdi,style: TextStyle(fontSize:30),)
        
      ) 
    );
}
}