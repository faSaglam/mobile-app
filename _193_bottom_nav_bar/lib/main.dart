import 'package:flutter/material.dart';
import 'Sayfa1.dart';
import 'Sayfa2.dart';
import 'Sayfa3.dart';

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
  var sayfaListes = [
    const Sayfa1(),
    const Sayfa2(),
    const Sayfa3(),
  ]; 

  int secilenIndex = 0; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: sayfaListes[secilenIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.looks_one), label: 'Sayfa 1'),
          BottomNavigationBarItem(icon: Icon(Icons.looks_two), label: 'Sayfa 2'),
          BottomNavigationBarItem(icon: Icon(Icons.looks_3), label: 'Sayfa 3'),
        ],
        currentIndex: secilenIndex,
        onTap: (index) {
          setState(() {
            secilenIndex = index;
          });
        },
      ),

    );
  }
}
