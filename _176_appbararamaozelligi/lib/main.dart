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
  bool aramaYapliyormu = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: aramaYapliyormu
            ? TextField(
                decoration: InputDecoration(
                  hintText: "Arama için bir şey yaz.",
                ),
                onChanged: (aramaSonucu) {
                  print("Arama sonucu : $aramaSonucu");
                },
              )
            : Text("Appbar Arama"),
        actions: [
          aramaYapliyormu
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      aramaYapliyormu = true;
                    });
                  },
                  icon: Icon(Icons.cancel),
                )
              : IconButton(
                  onPressed: () {
                    setState(() {
                      aramaYapliyormu = false;
                    });
                  },
                  icon: Icon(Icons.search),
                ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[],
        ),
      ),
    );
  }
}
