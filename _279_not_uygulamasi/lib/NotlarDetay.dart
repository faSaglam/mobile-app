import 'package:flutter/material.dart';
import 'Notlar.dart';

class NotlarDetay extends StatefulWidget {
  Notlar not;
  NotlarDetay({required this.not});
  @override
  _NotlarDetayState createState() => _NotlarDetayState();
}

class _NotlarDetayState extends State<NotlarDetay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Not Detay Sayfası")),
      body: Center(child: Column(children: [Text(widget.not.ders_adi)])),
    );
  }
}
