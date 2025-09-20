import 'package:flutter/material.dart';

class Sayfa1 extends StatelessWidget {
  int sayac = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: Text("Stateless page"),
      ),
      body: Column(
        children: [
          Text("Merhaba")

        ],
      ),
    );
  }
}