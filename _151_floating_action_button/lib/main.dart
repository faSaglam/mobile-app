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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var tfController = TextEditingController();
  String alinanVeri = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(decoration: InputDecoration(hintText: 'Yazınız')),
            FloatingActionButton(
              onPressed: () {
                print("Fab 2 Tıklandı.");
              },
              tooltip: "Fabl",

              backgroundColor: Colors.deepPurple,
              foregroundColor: Colors.amber,
              child: Icon(Icons.print),
            ),
          ],
        ),
      ),


      //bodynin altında olursa eğer klavye çıktığında da gider
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Fab 1 Tıklandı.");
        },
        tooltip: "Fabl",
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.amber,
        child: Icon(Icons.audiotrack),
      ),
    );
  }
}
