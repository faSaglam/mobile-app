import 'package:flutter/material.dart';

class Sayfa2 extends StatefulWidget {
  const Sayfa2({super.key});

  @override
  State<Sayfa2> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Sayfa2> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: Text("Statefull page"),
      ),
      body: Column(
        children: [
          Text("Merhaba")

        ],
      ),
    );
  }
}