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
  int? radioDeger = 1;

  void handleRadioChange(int? value) {
    setState(() {
      radioDeger = value;
    });
    if (value == 1) {
      print("Galatasaray seçildi.");
    } else if (value == 2) {
      print("Fenerbahçe seçildi.");
    }
  }

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
            RadioListTile(
              title: const Text("Galatasaray"),
              value: 1,
              groupValue: radioDeger,
              onChanged: handleRadioChange,
            ),
            RadioListTile(
              title: const Text("Fenerbahçe"),
              value: 2,
              groupValue: radioDeger,
              onChanged: handleRadioChange,   
            ),
          ],
        ),
      ),
    );
  }
}