import 'package:flutter/material.dart';

import 'sayfa1.dart';
import 'sayfa2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home Page',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // home: const MyHomePage(title: 'Home Page'),
      home: Sayfa2(),
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
  int sayac = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              setState(() {
                sayac += 1;
              });
            },

            child: Text("Sonuç:$sayac"),
          ),
        ],
      ),
    );
  }
}




