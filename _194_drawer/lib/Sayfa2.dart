import 'package:flutter/material.dart';

class Sayfa2 extends StatefulWidget {
  const Sayfa2({super.key});

  @override
  State<Sayfa2> createState() => _Sayfa3State();
}

class _Sayfa3State extends State<Sayfa2> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Sayfa 2',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ]
      ),
    );
  }
}