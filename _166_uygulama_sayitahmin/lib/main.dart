import 'package:_166_uygulama_sayitahmin/tahminEkrani.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sayı Tahmin Uygulaması',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Sayı Tahmin Uygulaması'),
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
          
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            
            Text("Tahmin Oyunu",style:TextStyle(color: Colors.grey,fontWeight:FontWeight.bold,fontSize: 32),),
            Image.asset("images/zar.jpg"),
            ElevatedButton(
              style:ElevatedButton.styleFrom(
                backgroundColor:Colors.blue,
              ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Tahminekrani()));

            }, 
            child: Text("Oyuna Başla",style: TextStyle(color: Colors.white),),
            )
          ],
        ),
      ),
    );
  }
}
