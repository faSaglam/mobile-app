import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MaviKare(),
            SizedBox(height:20),
            KirmiziKara(),
            Yazi("icerik", 10.0),

            
          ],
        ),
      ),
    );
  }
}

class MaviKare extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Container(width: 50,height: 50,color: Colors.blueAccent,);
  }
}

class KirmiziKara extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Container(width: 50,height: 50,color: Colors.red,);
  }
}

class Yazi extends StatelessWidget{

  late String icerik;
  late double fontBoyutu;

  Yazi(this.icerik,this.fontBoyutu);
  @override
  Widget build(BuildContext context) {
    return Text(icerik, style: TextStyle(fontSize: fontBoyutu),);
  }

}

